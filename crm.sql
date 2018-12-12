/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.1.25-rc-community : Database - hj_crm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hj_crm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hj_crm`;

/*Table structure for table `hj_action` */

DROP TABLE IF EXISTS `hj_action`;

CREATE TABLE `hj_action` (
  `actionid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '动作流程主键',
  `billno` bigint(50) DEFAULT NULL COMMENT '单据号',
  `actioncode` varchar(50) DEFAULT NULL COMMENT '动作编码',
  `resourceId` bigint(20) DEFAULT NULL COMMENT '资源主键',
  `studentId` bigint(20) DEFAULT NULL COMMENT '学员主键',
  `billstate` int(3) DEFAULT NULL COMMENT '状态  0资源未处理 1资源已处理 2学员已成交  3学员已提交行政  4已付款  5行政已分配客服  6已转入回访表',
  `fromuserid` bigint(20) DEFAULT NULL COMMENT '数据来源人ID',
  `touserid` bigint(20) DEFAULT NULL COMMENT '数据接收人ID',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源-学员流程表';

/*Data for the table `hj_action` */

/*Table structure for table `hj_cellinfo` */

DROP TABLE IF EXISTS `hj_cellinfo`;

CREATE TABLE `hj_cellinfo` (
  `cellinfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '选择列ID',
  `cellname` varchar(50) DEFAULT NULL COMMENT '列名',
  `cellcode` varchar(50) DEFAULT NULL COMMENT '列名编码',
  `cellno` int(20) DEFAULT NULL COMMENT '列名顺序',
  `cellmenu` varchar(50) DEFAULT NULL COMMENT '所属菜单',
  `celldeptid` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `cellroleid` bigint(20) DEFAULT NULL COMMENT '所属角色ID',
  `celluserid` bigint(20) DEFAULT NULL COMMENT '所属人ID',
  PRIMARY KEY (`cellinfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选择列表';

/*Data for the table `hj_cellinfo` */

/*Table structure for table `hj_course` */

DROP TABLE IF EXISTS `hj_course`;

CREATE TABLE `hj_course` (
  `courseid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '课程ID主键',
  `courseName` varchar(100) DEFAULT NULL COMMENT '课程名称',
  `coursecode` varchar(50) DEFAULT NULL COMMENT '课程编码',
  `courseMoney` varchar(50) DEFAULT NULL COMMENT '课程价格',
  `courseDescribe` varchar(200) DEFAULT NULL COMMENT '课程描述',
  `courseTeacherid` bigint(20) DEFAULT NULL COMMENT '授课老师ID',
  `courseTeacherName` varchar(50) DEFAULT NULL COMMENT '授课老师',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `hj_course` */

insert  into `hj_course`(`courseid`,`courseName`,`coursecode`,`courseMoney`,`courseDescribe`,`courseTeacherid`,`courseTeacherName`,`create_id`,`create_time`,`update_id`,`update_time`,`note`,`dr`) values (1,'课程1',NULL,'','',NULL,'',1,'2016-11-23 23:18:24',NULL,NULL,'',0),(2,'课程2',NULL,'2980','',NULL,'',1,'2016-11-23 23:18:35',1,'2016-11-23 23:28:33','',0),(3,'课程3',NULL,'9100','',NULL,'',1,'2016-11-23 23:19:54',1,'2016-11-23 23:28:13','五科',0),(4,'课程4',NULL,'8700','',NULL,'',1,'2016-11-23 23:20:01',1,'2016-11-23 23:28:23','五科',0),(5,'课程5',NULL,'498','',NULL,'',1,'2016-11-23 23:20:28',1,'2016-11-23 23:27:41','',0),(6,'课程6',NULL,'298','',NULL,'',1,'2016-11-23 23:22:29',1,'2016-11-23 23:27:35','',0),(7,'课程7',NULL,'598','',NULL,'',1,'2016-11-23 23:22:38',1,'2016-11-23 23:27:25','',0),(8,'课程8',NULL,'1298','',NULL,'',1,'2016-11-23 23:22:45',1,'2016-11-23 23:27:17','',0),(9,'课程9',NULL,'2980','',NULL,'',1,'2016-11-23 23:23:15',1,'2016-11-23 23:27:07','',0),(10,'课程10',NULL,'998','',NULL,'',1,'2016-11-23 23:23:33',1,'2016-11-23 23:26:37','',0),(11,'课程11',NULL,'198','',NULL,'',1,'2016-11-23 23:23:40',1,'2016-11-23 23:26:31','',0),(12,'课程12',NULL,'498','',NULL,'',1,'2016-11-23 23:23:47',1,'2016-11-23 23:26:23','',0),(13,'课程13',NULL,'498','',NULL,'',1,'2016-11-23 23:24:05',75,'2016-12-06 14:48:48','',0),(14,'课程14',NULL,'598','',NULL,'',1,'2016-11-23 23:24:48',75,'2016-12-06 14:48:54','',0),(15,'课程15',NULL,'980','',NULL,'',1,'2016-11-23 23:25:17',1,'2016-11-23 23:26:13','',0),(16,'课程16',NULL,'0.1','',NULL,'',1,'2016-11-23 23:25:34',1,'2016-11-23 23:25:53','',0),(17,'课程17',NULL,'','',NULL,'',1,'2016-11-23 23:59:54',1,'2016-11-23 16:05:59','',0),(18,'课程18',NULL,'','',NULL,'',1,'2016-11-24 00:00:09',1,'2016-11-23 16:06:09','',0),(19,'课程19',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(20,'课程20',NULL,'798','',NULL,'',1,'2017-03-15 10:18:59',NULL,NULL,'',0);

/*Table structure for table `hj_dealrecord` */

DROP TABLE IF EXISTS `hj_dealrecord`;

CREATE TABLE `hj_dealrecord` (
  `dealrecordId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '成交记录主键ID',
  `resourceId` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `studentId` bigint(20) DEFAULT NULL COMMENT '学员ID',
  `courseid` bigint(20) DEFAULT NULL COMMENT '课程ID',
  `subjectid` bigint(20) DEFAULT NULL COMMENT '科目ID',
  `userid` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改日期',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  `scoretime` timestamp NULL DEFAULT NULL COMMENT '考试时间',
  `score` varchar(20) DEFAULT NULL COMMENT '考试成绩',
  `ispass` int(1) DEFAULT '0' COMMENT '是否通过 0未通过 1通过 2缺考',
  PRIMARY KEY (`dealrecordId`),
  KEY `index_name` (`studentId`),
  KEY `index_name1` (`resourceId`),
  KEY `index_name2` (`courseid`),
  KEY `index_name3` (`userid`),
  KEY `index_name4` (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='成交记录表';

/*Data for the table `hj_dealrecord` */

insert  into `hj_dealrecord`(`dealrecordId`,`resourceId`,`studentId`,`courseid`,`subjectid`,`userid`,`create_time`,`update_id`,`update_time`,`note`,`dr`,`scoretime`,`score`,`ispass`) values (3,6,NULL,2,NULL,26,'2017-11-14 16:50:34',NULL,NULL,NULL,0,NULL,NULL,0),(4,7,NULL,1,NULL,26,'2017-11-14 16:56:36',NULL,NULL,NULL,0,NULL,NULL,0),(5,12,NULL,2,NULL,42,NULL,NULL,NULL,NULL,0,NULL,NULL,0),(6,21,NULL,1,1,NULL,'2018-07-30 16:13:40',NULL,NULL,NULL,0,NULL,NULL,0),(7,24,NULL,1,1,NULL,'2018-09-04 10:30:38',NULL,NULL,NULL,0,NULL,NULL,0),(8,25,NULL,1,1,NULL,'2018-10-08 14:17:51',NULL,NULL,NULL,0,NULL,NULL,0);

/*Table structure for table `hj_dept` */

DROP TABLE IF EXISTS `hj_dept`;

CREATE TABLE `hj_dept` (
  `deptid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `deptparaid` bigint(20) DEFAULT NULL COMMENT '上级部门ID',
  `deptname` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `deptcode` varchar(20) DEFAULT NULL COMMENT '部门编码',
  `dr` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `hj_dept` */

insert  into `hj_dept`(`deptid`,`deptparaid`,`deptname`,`deptcode`,`dr`,`create_time`,`create_id`,`update_time`,`update_id`) values (1,NULL,'总部','',0,NULL,NULL,'2016-11-24 17:16:13',1),(2,1,'运营部','',0,NULL,NULL,'2016-11-24 17:16:17',1),(3,1,'财务部','',0,NULL,NULL,'2016-11-24 17:16:20',1),(4,1,'行政部','',0,NULL,NULL,'2016-11-24 17:16:24',1),(5,1,'销售部','',0,NULL,NULL,'2016-11-24 17:16:27',1),(6,1,'客服部','',0,NULL,NULL,'2016-11-24 17:16:30',1),(7,5,'A/C项目部','',0,'2016-11-24 16:54:53',1,'2016-11-24 17:29:21',1),(8,5,'非A/C项目部','',0,'2016-11-24 17:16:52',1,'2016-11-24 17:29:41',1),(9,7,'信念团战队','',0,'2016-11-24 17:30:01',1,'2016-11-30 16:19:38',1),(10,7,'无敌战队','',0,'2016-11-24 17:30:18',1,NULL,NULL),(11,7,'雷霆战队','',0,'2016-11-24 17:30:29',1,NULL,NULL),(12,7,'同路人战队','',0,'2016-11-24 17:30:40',1,NULL,NULL),(13,7,'电话销售组','',0,'2016-11-24 17:30:59',1,NULL,NULL),(14,7,'小鲜肉组','',0,'2016-11-24 17:31:27',1,NULL,NULL),(15,8,'战狼英雄连战队','',0,'2016-11-24 17:31:55',1,'2016-11-25 11:54:54',1),(16,8,'王五战队','',0,'2016-11-24 17:32:10',1,NULL,NULL),(17,6,'AFP张三','',0,'2016-11-24 17:42:17',1,NULL,NULL),(18,6,'AFP','abc',0,'2016-11-24 17:42:33',1,NULL,NULL),(19,6,'CFP','',0,'2016-11-24 17:42:47',1,NULL,NULL),(20,6,'非AC李四','',0,'2016-11-24 17:42:59',1,NULL,NULL),(21,1,'机构客户部','',0,'2016-12-07 09:46:44',1,NULL,NULL),(22,28,'南京代理','',0,'2016-12-07 09:47:10',1,'2016-12-07 09:51:10',1),(23,28,'苏州代理','',0,'2016-12-07 09:47:18',1,'2016-12-07 09:51:17',1),(24,28,'西安代理','',0,'2016-12-07 09:47:29',1,'2016-12-07 09:51:32',1),(25,28,'重庆代理','',0,'2016-12-07 09:47:37',1,'2016-12-07 09:51:38',1),(26,28,'新疆代理','',0,'2016-12-07 09:47:44',1,'2016-12-07 09:51:45',1),(27,28,'泰州代理','',0,'2016-12-07 09:47:53',1,'2016-12-07 09:51:25',1),(28,1,'代理部','',0,'2016-12-07 09:50:59',1,NULL,NULL),(29,1,'关系客户部','',0,'2016-12-09 15:42:08',1,NULL,NULL),(30,1,'山东省','',0,'2016-12-13 19:00:26',1,NULL,NULL);

/*Table structure for table `hj_forget` */

DROP TABLE IF EXISTS `hj_forget`;

CREATE TABLE `hj_forget` (
  `forgetid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '忘记密码主键',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `expiration_time` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `randomcode` varchar(50) DEFAULT NULL COMMENT '随机MD5值',
  `linknumber` int(10) DEFAULT NULL COMMENT '链接点击次数   最大值10次',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  PRIMARY KEY (`forgetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='忘记密码信息表';

/*Data for the table `hj_forget` */

/*Table structure for table `hj_matchinfo` */

DROP TABLE IF EXISTS `hj_matchinfo`;

CREATE TABLE `hj_matchinfo` (
  `matchInfoId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '到账信息主键ID',
  `matchname` varchar(100) DEFAULT NULL COMMENT '汇款人',
  `payMoney` varchar(100) DEFAULT NULL COMMENT '收款金额',
  `payType` varchar(50) DEFAULT NULL COMMENT '汇款方式',
  `receiveTime` date DEFAULT NULL COMMENT '收款日期',
  `matchnote` varchar(200) DEFAULT NULL COMMENT '备注',
  `ismatch` int(1) DEFAULT '0' COMMENT '是否已匹配 0未匹配  1已匹配',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  `studentName` varchar(50) DEFAULT NULL COMMENT '确认到账对应的学员姓名',
  PRIMARY KEY (`matchInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='到账信息上传表';

/*Data for the table `hj_matchinfo` */

/*Table structure for table `hj_menu` */

DROP TABLE IF EXISTS `hj_menu`;

CREATE TABLE `hj_menu` (
  `menuid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menuparaid` bigint(20) DEFAULT NULL COMMENT '上级菜单ID',
  `menuname` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `menucode` varchar(50) DEFAULT NULL COMMENT '菜单编码',
  `menuno` int(10) DEFAULT NULL COMMENT '菜单序号',
  `menuurl` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `menuimgurl` varchar(300) DEFAULT NULL COMMENT '菜单图片地址url',
  `dr` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  `menutype` int(1) DEFAULT NULL COMMENT '菜单类型',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_id` bigint(20) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `hj_menu` */

insert  into `hj_menu`(`menuid`,`menuparaid`,`menuname`,`menucode`,`menuno`,`menuurl`,`menuimgurl`,`dr`,`menutype`,`create_time`,`update_time`,`create_id`,`update_id`) values (1,NULL,'系统管理','systemManage',1,'','glyphicon glyphicon-cog',0,NULL,'2016-10-17 15:03:07','2016-11-16 09:32:31',1,1),(2,1,'用户管理','userManage',1,'/system/userMang.do',NULL,0,NULL,'2016-10-17 15:04:02',NULL,1,NULL),(3,1,'菜单管理','menuManage',2,'/system/menuMang.do',NULL,0,NULL,'2016-10-17 15:04:27',NULL,1,NULL),(4,1,'角色管理','roleManage',3,'/system/roleMang.do',NULL,0,NULL,'2016-10-17 15:04:48',NULL,1,NULL),(5,1,'部门管理','deptManage',4,'/system/deptMang.do','',0,NULL,'2016-10-18 15:08:36','2016-10-24 15:27:22',1,NULL),(6,NULL,'运营部','yunying',3,'','glyphicon glyphicon-user',0,NULL,'2016-10-18 15:10:22','2016-11-16 09:32:45',1,1),(7,6,'资源管理','',0,'/resource/resourcesMang.do','',0,NULL,'2016-10-18 15:11:09','2016-11-11 10:53:41',1,1),(8,6,'学员管理','',1,'/student/studentMang.do','',0,NULL,'2016-10-18 15:11:11','2016-11-11 10:53:35',1,1),(9,NULL,'财务部','caiwu',6,'','glyphicon glyphicon-usd',0,NULL,'2016-10-18 15:11:41','2016-11-16 09:34:07',1,1),(10,9,'到账信息','',0,'/matchinfo/macthinfor.do','',0,NULL,'2016-10-18 15:12:24','2016-11-10 17:20:55',1,1),(12,NULL,'行政部','xingzheng',5,'','glyphicon glyphicon-bullhorn',0,NULL,'2016-10-18 15:13:07','2016-11-16 09:33:52',1,1),(13,12,'学员管理','',0,'/executive/studentMang.do','',0,NULL,'2016-10-18 15:13:35','2016-11-09 14:40:59',1,1),(15,NULL,'销售部','xiaoshou',4,'','glyphicon glyphicon-briefcase',0,NULL,'2016-10-18 15:14:08','2016-11-16 09:34:18',1,1),(16,15,'资源管理','',1,'/sales/resourcesMang.do','',0,NULL,'2016-10-18 15:14:31','2016-11-11 14:16:53',1,1),(17,15,'学员管理',NULL,2,'/sales/studentMang.do',NULL,0,NULL,'2016-10-18 15:14:34',NULL,1,NULL),(18,NULL,'客服部','kefu',7,'','glyphicon glyphicon-phone-alt',0,NULL,'2016-10-18 15:14:36','2016-11-16 09:34:29',1,1),(19,18,'新增学员','',0,'/custom/addStudentMang.do','',0,NULL,'2016-10-18 15:15:42','2016-11-18 10:04:00',1,1),(20,85,'AFP','',0,'/custom/AFPallStudentMang.do','',0,NULL,'2016-10-18 15:15:44','2016-11-24 10:30:26',1,1),(21,84,'AFP','',2,'/custom/AFPStudentMang.do','',0,NULL,'2016-10-18 15:15:45','2016-11-23 11:13:30',1,1),(57,NULL,'话术管理','huashu',2,'','glyphicon glyphicon-thumbs-up',0,NULL,'2016-10-26 16:57:53','2016-11-16 09:29:33',NULL,1),(58,57,'我的话术','myhuashu',1,'/patter/myPatter.do','',0,NULL,'2016-10-26 16:58:17',NULL,1,NULL),(59,1,'课程管理','kcgl',5,'/system/courseMang.do','',0,NULL,'2016-10-28 08:41:57','2016-10-28 08:43:13',1,NULL),(60,57,'话术场景','hscj',2,'/system/patterType.do','',0,NULL,'2016-10-31 17:58:02',NULL,1,NULL),(61,1,'科目管理','subjectManage',6,'/system/subjectMang.do','',0,NULL,'2016-11-01 10:23:00',NULL,1,NULL),(62,NULL,'报表统计','bbtj',10,'','glyphicon glyphicon-stats',0,NULL,'2016-11-01 14:18:57','2016-11-23 11:09:07',1,1),(63,12,'到账学员总表','',2,'/executive/accountStudent.do','',0,NULL,'2016-11-09 14:31:18','2016-11-21 14:04:59',1,1),(64,12,'匹配到账','',1,'/executive/matchMoney.do','',0,NULL,'2016-11-09 14:32:03','2016-11-09 14:41:11',1,1),(65,12,'网络培训费','',3,'/executive/networkTrain.do','',0,NULL,'2016-11-09 14:32:17','2016-11-22 02:05:59',1,1),(67,12,'学员关课','',5,'/executive/colseCourse.do','',0,NULL,'2016-11-09 14:32:47','2016-11-09 14:44:44',1,1),(68,12,'在线购买','',7,'/executive/buyOnline.do','',0,NULL,'2016-11-09 14:33:11',NULL,1,NULL),(70,84,'CFP','',3,'/custom/CFPStudentMang.do','',0,NULL,'2016-11-14 16:00:48','2016-11-23 11:13:34',1,1),(71,84,'基金从业','',4,'/custom/jiJinStudentMang.do','',0,NULL,'2016-11-14 16:01:22','2016-12-06 18:59:20',1,1),(72,84,'银行从业','',5,'/custom/yinCongStudentMang.do','',0,NULL,'2016-11-14 16:01:47','2016-12-06 18:59:28',1,1),(73,84,'中级经济师','',6,'/custom/zhongJiStudentMang.do','',0,NULL,'2016-11-14 16:02:03','2016-12-06 18:59:34',1,1),(74,84,'证券从业','',7,'/custom/zhengQuanStudentMang.do','',0,NULL,'2016-11-14 16:02:47','2016-12-06 18:59:40',1,1),(75,84,'期货从业','',8,'/custom/qiHuoStudentMang.do','',0,NULL,'2016-11-14 16:03:08','2016-12-06 18:59:46',1,1),(76,84,'会计从业','',9,'/custom/kjcyStudentMang.do','',0,NULL,'2016-11-14 16:03:23','2016-11-23 11:14:07',1,1),(77,84,'初级会计','',10,'/custom/cjkjStudentMang.do','',0,NULL,'2016-11-14 16:03:56','2016-11-23 11:14:12',1,1),(78,84,'通过学员','',11,'/custom/passStudentMang.do','',0,NULL,'2016-11-14 16:05:11','2016-12-01 08:42:26',1,1),(79,84,'特殊情况学员','',12,'/custom/specialStudentMang.do','',0,NULL,'2016-11-14 16:57:19','2016-12-01 08:42:34',1,1),(80,62,'业绩排行榜','',1,'/report/performance.do','',0,NULL,'2016-11-16 10:05:25','2016-12-09 10:00:42',1,1),(83,9,'网络培训费','',1,'/matchinfo/networkTrain.do','',0,NULL,'2016-11-21 16:02:46','2016-11-21 16:44:08',1,1),(84,NULL,'回访学员','',9,'','glyphicon glyphicon-earphone',0,NULL,'2016-11-23 11:07:36','2016-11-23 11:17:12',1,1),(85,NULL,'总表学员','',8,'','glyphicon glyphicon-sound-dolby',0,NULL,'2016-11-23 11:09:23','2016-11-23 11:16:52',1,1),(86,85,'CFP','',1,'/custom/CFPallStudentMang.do','',0,NULL,'2016-11-23 11:10:03','2016-11-24 11:56:39',1,1),(87,85,'基金从业','',2,'/custom/jijinallStudentMang.do','',0,NULL,'2016-11-23 11:10:26','2016-12-06 18:58:38',1,1),(88,85,'银行从业','',3,'/custom/yincongallStudentMang.do','',0,NULL,'2016-11-23 11:10:53','2016-12-06 18:58:48',1,1),(89,85,'中级经济师','',4,'/custom/zhongjiallStudentMang.do','',0,NULL,'2016-11-23 11:11:09','2016-12-06 18:58:55',1,1),(90,85,'证券从业','',5,'/custom/zhengquanallStudentMang.do','',0,NULL,'2016-11-23 11:11:28','2016-12-06 18:59:01',1,1),(91,85,'期货从业','',6,'/custom/qihuoallStudentMang.do','',0,NULL,'2016-11-23 11:11:37','2016-12-06 18:59:08',1,1),(92,85,'会计从业','',7,'/custom/kjcyallStudentMang.do','',0,NULL,'2016-11-23 11:11:50','2016-11-24 11:58:31',1,1),(93,85,'初级会计','',8,'/custom/cjkjallStudentMang.do','',0,NULL,'2016-11-23 11:12:03','2016-11-24 11:58:41',1,1),(94,9,'总表学员','',NULL,'/finance/financeStudentMang.do','',0,NULL,'2016-11-28 09:56:29',NULL,1,NULL),(95,1,'消息管理','messageManage',7,'/system/systemMessage.do','',0,NULL,'2016-12-01 16:04:20','2016-12-01 16:04:51',1,1),(96,62,'用户录入统计','',3,'/report/userCount.do','',0,NULL,'2016-12-12 09:33:46',NULL,1,NULL),(97,15,'公司资源管理','',3,'/sales/companySalesIndex.do','',0,NULL,'2016-12-13 19:02:30','2016-12-13 19:02:38',1,1),(98,NULL,'提成计算','',12,'','glyphicon glyphicon-list-alt',0,NULL,'2016-12-19 19:26:16','2016-12-19 19:30:00',1,1),(99,98,'提成发放总表','',0,'/commission/commissionAll.do','',0,NULL,'2016-12-19 19:29:30',NULL,1,NULL),(102,6,'转移记录','',3,'/operate/transferRecord.do','',0,NULL,'2016-12-22 13:38:21',NULL,1,NULL),(103,15,'转移记录','',3,'/sales/transferRecord.do','',0,NULL,'2016-12-22 13:38:43','2016-12-22 13:38:57',1,1),(104,15,'电话量查询','',4,'/sales/resourcesTelMang.do','',0,NULL,'2017-01-05 15:55:34',NULL,1,NULL),(105,6,'金考注册用户','',4,'/user/jinkaouser.do','',0,NULL,'2017-01-18 14:40:38',NULL,1,NULL),(106,1,'测试菜单','testcode222',10,'/system/test.do','',0,NULL,'2017-11-09 10:18:32','2017-11-09 10:43:55',1,1),(107,1,'测试菜单2','adfa5678',900,'asdfasfd','',0,NULL,'2017-12-13 09:22:26','2017-12-13 09:26:06',1,1),(112,111,'下级菜单','',2,'','',0,NULL,'2018-03-06 10:28:51',NULL,1,NULL);

/*Table structure for table `hj_passstudent` */

DROP TABLE IF EXISTS `hj_passstudent`;

CREATE TABLE `hj_passstudent` (
  `passStudentid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '通过学员主键ID',
  `address` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `idCard` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份证号码',
  `password` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `mobile` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  `tel` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '座机',
  `email` varchar(600) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `company` varchar(800) CHARACTER SET utf8 DEFAULT NULL COMMENT '单位名称',
  `homeAddress` varchar(800) CHARACTER SET utf8 DEFAULT NULL COMMENT '家庭地址',
  `zhiwu` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '职位',
  `school` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '毕业院校',
  `xueli` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '学历',
  `isFaPiao` int(4) DEFAULT NULL COMMENT '是否已开发票 0未开 1已开',
  `jiaoyuTime` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '继续教育日期',
  `note` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `coursename` varchar(60) CHARACTER SET utf8 DEFAULT NULL COMMENT '项目',
  `birthday` varchar(20) DEFAULT NULL COMMENT '生日',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`passStudentid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hj_passstudent` */

/*Table structure for table `hj_patter` */

DROP TABLE IF EXISTS `hj_patter`;

CREATE TABLE `hj_patter` (
  `patterid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '话术主键',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id,话术创建人',
  `roleid` bigint(20) DEFAULT NULL COMMENT '用户角色ID',
  `courseid` int(10) DEFAULT NULL COMMENT '课程id',
  `patterTypeId` bigint(20) DEFAULT NULL COMMENT '话术场景类别',
  `contentTypeId` bigint(20) DEFAULT NULL COMMENT '话术内容类别',
  `shortTitle` varchar(200) DEFAULT NULL COMMENT '话术内容短标题',
  `content` text COMMENT '话术内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `isshare` int(1) DEFAULT '0' COMMENT '是否共享 0不共享  1共享',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`patterid`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8 COMMENT='话术管理表';

/*Data for the table `hj_patter` */

insert  into `hj_patter`(`patterid`,`userid`,`roleid`,`courseid`,`patterTypeId`,`contentTypeId`,`shortTitle`,`content`,`create_time`,`update_time`,`update_id`,`isshare`,`note`,`dr`) values (18,89,35,NULL,16,NULL,'销售类型','<p style=\"text-align: center;\"><img src=\"/ueditor/jsp/upload/image/20161222/1482389682747094746.png\" title=\"1482389682747094746.png\" alt=\"blob.png\"/></p>','2016-12-22 14:50:16','2016-12-22 14:54:44',89,1,NULL,0),(19,89,35,NULL,16,NULL,'客户成交来源','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389656635014443.png\" title=\"1482389656635014443.png\" alt=\"blob.png\"/></p>','2016-12-22 14:54:19',NULL,NULL,1,NULL,0),(20,89,35,NULL,16,NULL,'销售人员成长','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389769151020930.png\" title=\"1482389769151020930.png\" alt=\"blob.png\"/></p>','2016-12-22 14:56:10',NULL,NULL,1,NULL,0),(21,89,35,NULL,16,NULL,'电话销售基本流程 ​','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389811183091890.png\" title=\"1482389811183091890.png\" alt=\"blob.png\"/></p>','2016-12-22 14:56:51',NULL,NULL,1,NULL,0),(22,89,35,NULL,16,NULL,'销售流程一：电话准备','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389837921071043.png\" title=\"1482389837921071043.png\" alt=\"blob.png\"/></p>','2016-12-22 14:57:18',NULL,NULL,1,NULL,0),(23,89,35,NULL,16,NULL,'销售流程二：自我介绍','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389862699047069.png\" title=\"1482389862699047069.png\" alt=\"blob.png\"/></p>','2016-12-22 14:57:43',NULL,NULL,1,NULL,0),(24,89,NULL,NULL,NULL,NULL,'销售流程三：收集信息','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482389924298022398.png\" title=\"1482389924298022398.png\" alt=\"blob.png\"/></p>','2016-12-22 14:58:45',NULL,NULL,1,NULL,0),(25,89,35,NULL,16,NULL,'销售流程三：收集信息','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390059259069318.png\" title=\"1482390059259069318.png\" alt=\"blob.png\"/></p>','2016-12-22 15:01:00',NULL,NULL,1,NULL,0),(26,89,35,NULL,16,NULL,'销售流程四：解决三大问题','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390190238022269.png\" title=\"1482390190238022269.png\" alt=\"blob.png\"/><img src=\"/ueditor/jsp/upload/image/20161222/1482390196411058678.png\" title=\"1482390196411058678.png\" alt=\"blob.png\"/><img src=\"/ueditor/jsp/upload/image/20161222/1482390201698060870.png\" title=\"1482390201698060870.png\" alt=\"blob.png\"/></p>','2016-12-22 15:01:38','2016-12-22 15:03:24',89,1,NULL,0),(27,89,35,NULL,16,NULL,'销售流程五：促成','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390228531027604.png\" title=\"1482390228531027604.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482390263957015638.png\" title=\"1482390263957015638.png\" alt=\"blob.png\"/></p>','2016-12-22 15:03:49','2016-12-22 15:04:25',89,1,NULL,0),(28,89,35,NULL,16,NULL,'陌生拜访结束注意事项','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390293642097103.png\" title=\"1482390293642097103.png\" alt=\"blob.png\"/></p>','2016-12-22 15:04:57',NULL,NULL,1,NULL,0),(29,89,35,NULL,17,NULL,'电话销售实施三步骤','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390348716057268.png\" title=\"1482390348716057268.png\" alt=\"blob.png\"/></p>','2016-12-22 15:05:49',NULL,NULL,1,NULL,0),(30,89,35,NULL,17,NULL,'短信、微信的跟进注意事项','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390369813087945.png\" title=\"1482390369813087945.png\" alt=\"blob.png\"/></p>','2016-12-22 15:06:10',NULL,NULL,1,NULL,0),(31,89,35,NULL,17,NULL,'回访注意事项','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390386627075583.png\" title=\"1482390386627075583.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482390410480081725.png\" title=\"1482390410480081725.png\" alt=\"blob.png\"/><img src=\"/ueditor/jsp/upload/image/20161222/1482390417753043734.png\" title=\"1482390417753043734.png\" alt=\"blob.png\"/><img src=\"/ueditor/jsp/upload/image/20161222/1482390423417063656.png\" title=\"1482390423417063656.png\" alt=\"blob.png\"/></p>','2016-12-22 15:06:27','2016-12-22 15:07:07',89,1,NULL,0),(32,89,35,NULL,18,NULL,'报名流程','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390458502007631.png\" title=\"1482390458502007631.png\" alt=\"blob.png\"/></p>','2016-12-22 15:07:39',NULL,NULL,1,NULL,0),(33,89,35,NULL,19,NULL,'工作记录','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390492150063707.png\" title=\"1482390492150063707.png\" alt=\"blob.png\"/></p>','2016-12-22 15:08:12',NULL,NULL,1,NULL,0),(34,89,35,NULL,19,NULL,'周工作计划表','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390508622035147.png\" title=\"1482390508622035147.png\" alt=\"blob.png\"/></p>','2016-12-22 15:08:29',NULL,NULL,1,NULL,0),(35,89,35,NULL,19,NULL,'成交客户记录本','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390523649013893.png\" title=\"1482390523649013893.png\" alt=\"blob.png\"/></p>','2016-12-22 15:08:43',NULL,NULL,1,NULL,0),(36,89,35,NULL,19,NULL,'示例：成交客户记录','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390547916045679.png\" title=\"1482390547916045679.png\" alt=\"blob.png\"/></p>','2016-12-22 15:09:13',NULL,NULL,1,NULL,0),(37,89,35,NULL,19,NULL,'示例：电话资源拨打记录','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390580172077107.png\" title=\"1482390580172077107.png\" alt=\"blob.png\"/></p>','2016-12-22 15:09:41',NULL,NULL,1,NULL,0),(38,89,35,NULL,20,NULL,'怎么包过的，为什么包过？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390619151054819.png\" title=\"1482390619151054819.png\" alt=\"blob.png\"/></p>','2016-12-22 15:10:19','2016-12-22 15:12:03',89,1,NULL,0),(39,89,35,NULL,20,NULL,'等行里统一组织呢，不报保过班（跑网点中常见问题）','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390745855019195.png\" title=\"1482390745855019195.png\" alt=\"blob.png\"/></p>','2016-12-22 15:12:26',NULL,NULL,1,NULL,0),(40,89,35,NULL,20,NULL,'暂时不考，没有时间','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390762024061274.png\" title=\"1482390762024061274.png\" alt=\"blob.png\"/></p>','2016-12-22 15:12:42',NULL,NULL,1,NULL,0),(41,89,35,NULL,20,NULL,'自己能考过，不用报什么保过班，我同事之前就自己考过的','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390779486042617.png\" title=\"1482390779486042617.png\" alt=\"blob.png\"/></p>','2016-12-22 15:13:00',NULL,NULL,1,NULL,0),(42,89,35,NULL,20,NULL,'您们这个太贵了','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390795977034090.png\" title=\"1482390795977034090.png\" alt=\"blob.png\"/></p>','2016-12-22 15:13:16',NULL,NULL,1,NULL,0),(43,89,35,NULL,20,NULL,'AFP考试我学不会，太难了','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390811911055088.png\" title=\"1482390811911055088.png\" alt=\"blob.png\"/></p>','2016-12-22 15:13:32',NULL,NULL,1,NULL,0),(44,89,35,NULL,20,NULL,'是不是我给钱，您们就一定能让我拿到证，不上课行不行','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390829013068696.png\" title=\"1482390829013068696.png\" alt=\"blob.png\"/></p>','2016-12-22 15:13:49',NULL,NULL,1,NULL,0),(45,89,35,NULL,20,NULL,'行里现在没有要求考，等要求时我再考吧，不着急','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390855472090660.png\" title=\"1482390855472090660.png\" alt=\"blob.png\"/></p>','2016-12-22 15:14:16',NULL,NULL,1,NULL,0),(46,89,35,NULL,20,NULL,'您们说的倒是挺好，万一我没有过怎么办','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390874191020094.png\" title=\"1482390874191020094.png\" alt=\"blob.png\"/></p>','2016-12-22 15:14:34',NULL,NULL,1,NULL,0),(47,89,35,NULL,20,NULL,'我们有同事报过你们的班，但是没有过，所以我很犹豫','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390891148097787.png\" title=\"1482390891148097787.png\" alt=\"blob.png\"/></p>','2016-12-22 15:14:52',NULL,NULL,1,NULL,0),(48,89,35,NULL,20,NULL,'我们怎么可以相信您们，万一您们拿钱跑了怎么办，我怎么相信你','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390907327051767.png\" title=\"1482390907327051767.png\" alt=\"blob.png\"/></p>','2016-12-22 15:15:08',NULL,NULL,1,NULL,0),(49,89,35,NULL,20,NULL,'我报的这个AFP只学习网络保过班，能过吗？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390924037041713.png\" title=\"1482390924037041713.png\" alt=\"blob.png\"/></p>','2016-12-22 15:15:24',NULL,NULL,1,NULL,0),(50,89,35,NULL,20,NULL,'我CFP的面授刚开始学，还不想报保过班','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390947481057777.png\" title=\"1482390947481057777.png\" alt=\"blob.png\"/></p>','2016-12-22 15:15:48',NULL,NULL,1,NULL,0),(51,89,35,NULL,20,NULL,'不是学金融专业的，可以考AFP','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482390966614035715.png\" title=\"1482390966614035715.png\" alt=\"blob.png\"/></p>','2016-12-22 15:16:07',NULL,NULL,1,NULL,0),(52,89,35,NULL,7,NULL,'有效沟通，掌握主动','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391085920090965.png\" title=\"1482391085920090965.png\" alt=\"blob.png\"/></p>','2016-12-22 15:18:06',NULL,NULL,1,NULL,0),(53,1,35,NULL,8,NULL,'客服岗位职责概括','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391154724047957.png\" title=\"1482391154724047957.png\" alt=\"blob.png\"/>d<span style=\"color: rgb(247, 150, 70);\">d<span style=\"color: rgb(255, 0, 0);\">dddd</span></span></p>','2016-12-22 15:19:15','2017-05-11 10:22:39',1,1,NULL,0),(54,89,35,NULL,8,NULL,'金考网学习指导','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391174502097619.png\" title=\"1482391174502097619.png\" alt=\"blob.png\"/></p>','2016-12-22 15:19:35',NULL,NULL,1,NULL,0),(55,89,35,NULL,8,NULL,'开通金考网-开课-跟踪-通知','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391196617082368.png\" title=\"1482391196617082368.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482391241411012117.png\" title=\"1482391241411012117.png\" alt=\"blob.png\"/></p>','2016-12-22 15:20:18','2016-12-22 15:20:42',89,1,NULL,0),(61,89,35,NULL,21,NULL,'第一条微信——机构','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391412921054639.png\" title=\"1482391412921054639.png\" alt=\"blob.png\"/></p>','2016-12-22 15:23:33',NULL,NULL,1,NULL,0),(62,89,35,NULL,21,NULL,'第一条微信——社会','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391429563040950.png\" title=\"1482391429563040950.png\" alt=\"blob.png\"/></p>','2016-12-22 15:23:50',NULL,NULL,1,NULL,0),(63,89,35,NULL,21,NULL,'QQ直播通知','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391446603053257.png\" title=\"1482391446603053257.png\" alt=\"blob.png\"/></p>','2016-12-22 15:24:07',NULL,NULL,1,NULL,0),(64,89,35,NULL,21,NULL,'邮寄课件通知','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391461649022990.png\" title=\"1482391461649022990.png\" alt=\"blob.png\"/></p>','2016-12-22 15:24:22',NULL,NULL,1,NULL,0),(65,89,35,NULL,22,NULL,'课后复习建议1','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391492653069442.png\" title=\"1482391492653069442.png\" alt=\"blob.png\"/></p>','2016-12-22 15:24:53','2016-12-22 15:25:16',89,1,NULL,0),(66,89,35,NULL,22,NULL,'课后复习建议2','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391520049001325.png\" title=\"1482391520049001325.png\" alt=\"blob.png\"/></p>','2016-12-22 15:25:30',NULL,NULL,1,NULL,0),(67,89,35,NULL,22,NULL,'课后复习建议—30天','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391546504065480.png\" title=\"1482391546504065480.png\" alt=\"blob.png\"/></p>','2016-12-22 15:25:47',NULL,NULL,1,NULL,0),(68,89,35,NULL,22,NULL,'AFP考试分值表','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391562509034989.png\" title=\"1482391562509034989.png\" alt=\"blob.png\"/></p>','2016-12-22 15:26:03',NULL,NULL,1,NULL,0),(69,89,35,NULL,22,NULL,'AFP考试突击计划—上午1','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391577067002139.png\" title=\"1482391577067002139.png\" alt=\"blob.png\"/></p>','2016-12-22 15:26:17','2016-12-22 15:26:32',89,1,NULL,0),(70,89,35,NULL,22,NULL,'AFP考试突击计划-上午2','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391595948063563.png\" title=\"1482391595948063563.png\" alt=\"blob.png\"/></p>','2016-12-22 15:26:41',NULL,NULL,1,NULL,0),(71,89,35,NULL,22,NULL,'AFP考试突击计划-下午1','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391616731008760.png\" title=\"1482391616731008760.png\" alt=\"blob.png\"/></p>','2016-12-22 15:26:57',NULL,NULL,1,NULL,0),(72,89,35,NULL,22,NULL,'AFP考试突击计划-下午2','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391634933028823.png\" title=\"1482391634933028823.png\" alt=\"blob.png\"/></p>','2016-12-22 15:27:15',NULL,NULL,1,NULL,0),(73,89,35,NULL,24,NULL,'首次通话','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391838611080864.png\" title=\"1482391838611080864.png\" alt=\"blob.png\"/></p>','2016-12-22 15:30:39','2016-12-22 15:30:57',89,1,NULL,0),(74,89,35,NULL,24,NULL,'开课前通话（面授班学员）','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391878482083379.png\" title=\"1482391878482083379.png\" alt=\"blob.png\"/></p>','2016-12-22 15:31:19',NULL,NULL,1,NULL,0),(75,89,35,NULL,24,NULL,'课后回访（面授班学员）-报名提醒','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391901270087933.png\" title=\"1482391901270087933.png\" alt=\"blob.png\"/></p>','2016-12-22 15:31:41',NULL,NULL,1,NULL,0),(76,89,35,NULL,24,NULL,'考前回访','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391921725009248.png\" title=\"1482391921725009248.png\" alt=\"blob.png\"/></p>','2016-12-22 15:32:02',NULL,NULL,1,NULL,0),(77,89,35,NULL,24,NULL,'考后回访','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391942217086598.png\" title=\"1482391942217086598.png\" alt=\"blob.png\"/></p>','2016-12-22 15:32:22',NULL,NULL,1,NULL,0),(78,89,35,NULL,24,NULL,'确认开通金考网','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391959075058425.png\" title=\"1482391959075058425.png\" alt=\"blob.png\"/></p>','2016-12-22 15:32:39',NULL,NULL,1,NULL,0),(79,89,35,NULL,24,NULL,'提示进入金考网学习','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391975525025202.png\" title=\"1482391975525025202.png\" alt=\"blob.png\"/></p>','2016-12-22 15:32:56',NULL,NULL,1,NULL,0),(80,89,35,NULL,24,NULL,'提示应对理财网调查话术','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482391992271044855.png\" title=\"1482391992271044855.png\" alt=\"blob.png\"/></p>','2016-12-22 15:33:13',NULL,NULL,1,NULL,0),(81,89,35,NULL,24,NULL,'结束语','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392006482094545.png\" title=\"1482392006482094545.png\" alt=\"blob.png\"/></p>','2016-12-22 15:33:27',NULL,NULL,1,NULL,0),(82,89,35,NULL,23,NULL,'通知开课（面授地区）','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392063087062562.png\" title=\"1482392063087062562.png\" alt=\"blob.png\"/></p>','2016-12-22 15:34:24',NULL,NULL,1,NULL,0),(83,89,35,NULL,23,NULL,'通知开课（面授地区）2','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392080785026610.png\" title=\"1482392080785026610.png\" alt=\"blob.png\"/></p>','2016-12-22 15:34:41',NULL,NULL,1,NULL,0),(84,89,35,NULL,23,NULL,'通知开课（面授地区）3','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392108002078273.png\" title=\"1482392108002078273.png\" alt=\"blob.png\"/></p>','2016-12-22 15:35:08',NULL,NULL,1,NULL,0),(85,89,35,NULL,23,NULL,'通知开课（面授地区）4','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392127752068136.png\" title=\"1482392127752068136.png\" alt=\"blob.png\"/></p>','2016-12-22 15:35:28',NULL,NULL,1,NULL,0),(86,89,35,NULL,23,NULL,'通知开课（面授地区）5','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392143871048504.png\" title=\"1482392143871048504.png\" alt=\"blob.png\"/></p>','2016-12-22 15:35:44',NULL,NULL,1,NULL,0),(87,89,35,NULL,23,NULL,'课后跟踪回访','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392158301059156.png\" title=\"1482392158301059156.png\" alt=\"blob.png\"/></p>','2016-12-22 15:35:59',NULL,NULL,1,NULL,0),(88,89,35,NULL,23,NULL,'金考网学习指导','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392180457040877.png\" title=\"1482392180457040877.png\" alt=\"blob.png\"/></p>','2016-12-22 15:36:21',NULL,NULL,1,NULL,0),(89,89,35,NULL,23,NULL,'如何有效的去做金考网的题？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392199323027951.png\" title=\"1482392199323027951.png\" alt=\"blob.png\"/></p>','2016-12-22 15:36:40',NULL,NULL,1,NULL,0),(90,89,35,NULL,23,NULL,'面授课我都听了，练习题不做可以吗？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392243623097343.png\" title=\"1482392243623097343.png\" alt=\"blob.png\"/></p>','2016-12-22 15:37:24',NULL,NULL,1,NULL,0),(91,89,35,NULL,23,NULL,'老师讲课的时候我都听得懂，但在做题的时候都不会了，怎么办？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392261456073334.png\" title=\"1482392261456073334.png\" alt=\"blob.png\"/></p>','2016-12-22 15:37:42',NULL,NULL,1,NULL,0),(92,89,35,NULL,23,NULL,'我没时间学习，要是有时间就不用报保过班了？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392292807063010.png\" title=\"1482392292807063010.png\" alt=\"blob.png\"/></p>','2016-12-22 15:38:13',NULL,NULL,1,NULL,0),(93,89,35,NULL,23,NULL,'参加面授培训多久考试比较合适？','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392307374042810.png\" title=\"1482392307374042810.png\" alt=\"blob.png\"/></p>','2016-12-22 15:38:27',NULL,NULL,1,NULL,0),(94,89,35,NULL,23,NULL,'通知考试时间','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392321535018466.png\" title=\"1482392321535018466.png\" alt=\"blob.png\"/></p>','2016-12-22 15:38:42',NULL,NULL,1,NULL,0),(95,89,35,NULL,23,NULL,'确认报名是否成功','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392334351030841.png\" title=\"1482392334351030841.png\" alt=\"blob.png\"/></p>','2016-12-22 15:38:54',NULL,NULL,1,NULL,0),(96,89,35,NULL,23,NULL,'复习情况跟踪','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392347858095726.png\" title=\"1482392347858095726.png\" alt=\"blob.png\"/></p>','2016-12-22 15:39:08',NULL,NULL,1,NULL,0),(98,89,35,NULL,25,NULL,'成绩查询','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392389241028390.png\" title=\"1482392389241028390.png\" alt=\"blob.png\"/></p>','2016-12-22 15:39:49',NULL,NULL,1,NULL,0),(99,89,35,NULL,26,NULL,'打印准考证','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392412039022254.png\" title=\"1482392412039022254.png\" alt=\"blob.png\"/></p>','2016-12-22 15:40:12',NULL,NULL,1,NULL,0),(100,89,35,NULL,27,NULL,'带班流程之班前准备','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392487135085092.png\" title=\"1482392487135085092.png\" alt=\"blob.png\"/></p>','2016-12-22 15:41:31',NULL,NULL,1,NULL,0),(101,89,35,NULL,27,NULL,'开班学员数量统计','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392504603059051.png\" title=\"1482392504603059051.png\" alt=\"blob.png\"/></p>','2016-12-22 15:41:45',NULL,NULL,1,NULL,0),(102,89,35,NULL,27,NULL,'物品准备','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392564879029841.png\" title=\"1482392564879029841.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482392581233090522.png\" title=\"1482392581233090522.png\" alt=\"blob.png\"/><img src=\"/ueditor/jsp/upload/image/20161222/1482392593406099059.png\" title=\"1482392593406099059.png\" alt=\"blob.png\"/></p>','2016-12-22 15:42:45','2016-12-22 15:43:18',89,1,NULL,0),(103,89,35,NULL,27,NULL,'带 班  ∙ 穿 着 篇','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392618372019097.png\" title=\"1482392618372019097.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482392628514025450.png\" title=\"1482392628514025450.png\" alt=\"blob.png\"/></p>','2016-12-22 15:43:51',NULL,NULL,1,NULL,0),(104,89,35,NULL,27,NULL,'带 班  ∙ 仪态 篇','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392645201042881.png\" title=\"1482392645201042881.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482392654703026705.png\" title=\"1482392654703026705.png\" alt=\"blob.png\"/></p>','2016-12-22 15:44:20',NULL,NULL,1,NULL,0),(105,89,35,NULL,27,NULL,'会场布置','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392670538045459.png\" title=\"1482392670538045459.png\" alt=\"blob.png\"/></p>','2016-12-22 15:44:34',NULL,NULL,1,NULL,0),(106,89,35,NULL,27,NULL,'会前确认','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392687934004456.png\" title=\"1482392687934004456.png\" alt=\"blob.png\"/></p>','2016-12-22 15:46:04',NULL,NULL,1,NULL,0),(107,89,35,NULL,27,NULL,'签到台的作用','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392786574072919.png\" title=\"1482392786574072919.png\" alt=\"blob.png\"/></p>','2016-12-22 15:46:27',NULL,NULL,1,NULL,0),(108,89,35,NULL,27,NULL,'教室内的管理','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392802083014287.png\" title=\"1482392802083014287.png\" alt=\"blob.png\"/></p>','2016-12-22 15:46:42',NULL,NULL,1,NULL,0),(109,89,35,NULL,27,NULL,'周 六 上 午---周 日上 午','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392832470094743.png\" title=\"1482392832470094743.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482392856280067185.png\" title=\"1482392856280067185.png\" alt=\"blob.png\"/></p>','2016-12-22 15:47:13','2016-12-22 15:47:37',89,1,NULL,0),(110,89,35,NULL,27,NULL,'照片--录音','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482392876411013054.png\" title=\"1482392876411013054.png\" alt=\"blob.png\"/></p>','2016-12-22 15:48:02',NULL,NULL,1,NULL,0),(111,89,35,NULL,28,NULL,'相信公司 相信自己  相信产品','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393096304012338.png\" title=\"1482393096304012338.png\" alt=\"blob.png\"/></p>','2016-12-22 15:51:36',NULL,NULL,1,NULL,0),(112,89,35,NULL,29,NULL,'开场','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393112037014786.png\" title=\"1482393112037014786.png\" alt=\"blob.png\"/></p>','2016-12-22 15:51:52',NULL,NULL,1,NULL,0),(113,89,35,NULL,30,NULL,'探需','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393128878067577.png\" title=\"1482393128878067577.png\" alt=\"blob.png\"/></p>','2016-12-22 15:52:09',NULL,NULL,1,NULL,0),(114,89,35,NULL,31,NULL,'班型引导1','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393143399005904.png\" title=\"1482393143399005904.png\" alt=\"blob.png\"/></p>','2016-12-22 15:52:24',NULL,NULL,1,NULL,0),(115,89,35,NULL,31,NULL,'班型引导2','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393156343060036.png\" title=\"1482393156343060036.png\" alt=\"blob.png\"/></p>','2016-12-22 15:52:43',NULL,NULL,1,NULL,0),(116,89,35,NULL,32,NULL,'首次截杀','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393186985039216.png\" title=\"1482393186985039216.png\" alt=\"blob.png\"/></p>','2016-12-22 15:53:07',NULL,NULL,1,NULL,0),(117,89,35,NULL,33,NULL,'答疑','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393202725055930.png\" title=\"1482393202725055930.png\" alt=\"blob.png\"/></p>','2016-12-22 15:53:23',NULL,NULL,1,NULL,0),(118,89,35,NULL,34,NULL,'回访','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393217555007272.png\" title=\"1482393217555007272.png\" alt=\"blob.png\"/></p>','2016-12-22 15:53:38',NULL,NULL,1,NULL,0),(119,89,35,NULL,32,NULL,'二次截杀','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393232754089398.png\" title=\"1482393232754089398.png\" alt=\"blob.png\"/></p><p><img src=\"/ueditor/jsp/upload/image/20161222/1482393246822017644.png\" title=\"1482393246822017644.png\" alt=\"blob.png\"/></p>','2016-12-22 15:53:53','2016-12-22 15:54:07',89,1,NULL,0),(120,89,35,NULL,35,NULL,'我们的优势','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393266538025126.png\" title=\"1482393266538025126.png\" alt=\"blob.png\"/></p>','2016-12-22 15:54:27',NULL,NULL,1,NULL,0),(121,89,35,NULL,35,NULL,'怎么保过？（可参照优势）','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393280783015236.png\" title=\"1482393280783015236.png\" alt=\"blob.png\"/></p>','2016-12-22 15:54:41',NULL,NULL,1,NULL,0),(122,89,35,NULL,35,NULL,'价格贵（强调一分钱 一分货）','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393296393005366.png\" title=\"1482393296393005366.png\" alt=\"blob.png\"/></p>','2016-12-22 15:54:57',NULL,NULL,1,NULL,0),(123,89,35,NULL,35,NULL,'您同事是什么时候考的？从去年开始考试时就改革了','<p><img src=\"/ueditor/jsp/upload/image/20161222/1482393310975059795.png\" title=\"1482393310975059795.png\" alt=\"blob.png\"/></p>','2016-12-22 15:55:11',NULL,NULL,1,NULL,0),(125,41,17,NULL,8,NULL,'CFP','<p>CFP考试安排的建议：以8月份报考10月份考试的时间为例，从报名到考试整整45天。如果在这45天里，某位同学有集中的长假，能够保证学习的总时间在150小时左右的（平均每天3小时以上），我们鼓励报5科（效率高的话有一次通过的学长学姐为例哦），真的，时间非常够！如果45天能够保证达到总体100小时的学习，我们建议报考不要超过4科（投资和综合案例一起报考的情况要单独考虑），比较保险的是报考3科，平均每天2.5小时的学习；如果考前的45天综合起来学习的时间仅能达到70个小时左右，最多考试报两科（也可以说是保两科）；在考前只能保证每天学上一小时，总体加起来不小于45小时的，就报一科吧，争取报一科过一科！通过CFP考试的宗旨就是：报神马，就过神马！不求最快，但求最稳！！！</p>','2016-12-22 17:56:45',NULL,NULL,0,NULL,0),(126,5,NULL,NULL,NULL,NULL,'1.报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。</span></span></p><p><br/></p>','2017-02-10 11:35:34',NULL,NULL,0,NULL,0),(127,5,NULL,NULL,NULL,NULL,'需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。</span></span></p><p><br/></p>','2017-02-10 11:36:02',NULL,NULL,0,NULL,0),(128,5,NULL,NULL,NULL,NULL,'需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。</span></span></p><p><br/></p>','2017-02-10 11:36:04',NULL,NULL,0,NULL,0),(131,5,2,NULL,8,NULL,'报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要先拿到官方培训结业证书，才有参考资格，但是对于学历和工作年限也有要求，您说下您的情况，我帮您看下是否符合。而且也要拿到官方培训结业证书才能参考的。</span></span></p><p><br/></p>','2017-02-10 11:38:38','2017-02-10 11:39:01',5,1,NULL,0),(132,5,NULL,NULL,NULL,NULL,'AFP和CFP有什么区别？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP<span style=\"font-family:宋体\">是国内的金融理财师，</span><span style=\"font-family:Calibri\">CFP</span><span style=\"font-family:宋体\">是国际的金融理财师，而且</span><span style=\"font-family:Calibri\">CFP</span><span style=\"font-family:宋体\">的含金量和市场需求量都高于</span><span style=\"font-family:Calibri\">AFP</span><span style=\"font-family:宋体\">的。</span></span></p><p><br/></p>','2017-02-10 11:40:29',NULL,NULL,0,NULL,0),(133,5,2,NULL,8,NULL,'AFP和CFP有什么区别？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP<span style=\"font-family:宋体\">是国内的金融理财师，</span><span style=\"font-family:Calibri\">CFP</span><span style=\"font-family:宋体\">是国际的金融理财师，而且</span><span style=\"font-family:Calibri\">CFP</span><span style=\"font-family:宋体\">的含金量和市场需求量都高于</span><span style=\"font-family:Calibri\">AFP</span><span style=\"font-family:宋体\">的。</span></span></p><p><br/></p>','2017-02-10 11:40:54',NULL,NULL,1,NULL,0),(134,5,2,NULL,8,NULL,'想报名AFP的考试','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">您的学历和工作年限条件符合报考要求吗？（符合，不符合按照流程引导）</span></span></p><p><br/></p>','2017-02-10 11:41:46',NULL,NULL,1,NULL,0),(135,5,2,NULL,8,NULL,'5.到拿证需要多久的时间？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">正常情况下一个月左右，但是我们华金缩减了课时，涵盖考点</span>100%<span style=\"font-family:宋体\">，培训一共下来四天就可以的。然后参加考试，考试成绩合格后就可以拿证的。</span></span></p><p><br/></p>','2017-02-10 11:45:01',NULL,NULL,1,NULL,0),(136,5,2,NULL,8,NULL,'6.报名时间是啥时候？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">您是准备什么时间考试呢</span>?一年有很多次考试,而且报名时间是在考试的前40天的,您现在拿到考试资格了吗?需要拿到考试资格才能报名的</span></p><p><br/></p>','2017-02-10 11:45:27',NULL,NULL,1,NULL,0),(145,5,2,NULL,38,NULL,'报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">对于学历和年龄有要求，您说下您的情况，我帮您看下是否符合（学员说后继续引导）</span></span></p><p><br/></p>','2017-02-15 15:45:58',NULL,NULL,1,NULL,0),(146,5,2,NULL,38,NULL,'报名网站是哪个？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">是中国期货业协会网</span></span></p><p><br/></p>','2017-02-15 15:47:05',NULL,NULL,1,NULL,0),(147,5,2,NULL,38,NULL,'3.考试报名费多少钱？','<p><span style=\"font-family: 宋体;font-size: 14px\">65一科的</span></p><p><br/></p>','2017-02-15 15:47:16',NULL,NULL,1,NULL,0),(148,5,2,NULL,38,NULL,'4.一年有几次考试啊？','<p><span style=\"font-family: 宋体;font-size: 14px\">5次的</span></p><p><br/></p>','2017-02-15 16:24:38',NULL,NULL,1,NULL,0),(149,5,2,NULL,38,NULL,'5.考几科？都考啥？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考两科，包括《期货基础知识》、《期货法律法规》、</span></span></p><p><br/></p>','2017-02-15 16:24:54',NULL,NULL,1,NULL,0),(150,5,2,NULL,38,NULL,'6.考试成绩啥时候出？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">在考试结束后一周就可以查询</span></span></p><p><br/></p>','2017-02-15 16:25:05',NULL,NULL,1,NULL,0),(151,5,2,NULL,38,NULL,'7.考试成绩几年有效？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">单科成绩有效期为当年及以后两个年度。</span></span></p><p><br/></p>','2017-02-15 16:25:20',NULL,NULL,1,NULL,0),(152,5,2,NULL,38,NULL,'8.期货含金量高吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">就目前的期货市场的发展状况来看，期货人才还是很紧缺的，就算您在证券行业，有期货从业资格证也是比较吃香的，因为如果您所在的证券公司有期货</span>IB部，那么您必须有期</span><span style=\"font-family: 宋体; font-size: 14px;\">货从业资格证才能开期货账户收取佣金。</span></p><p><br/></p>','2017-02-15 16:25:38',NULL,NULL,1,NULL,0),(153,5,2,NULL,37,NULL,'报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">对于学历和年龄有要求，您说下您的情况，我帮您看下是否符合（学员说后继续引导）</span></span></p><p><br/></p>','2017-02-15 16:29:03',NULL,NULL,1,NULL,0),(154,5,2,NULL,37,NULL,'2.怎么报名？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要登录中国银行协会网站报名的</span></span></p><p><br/></p>','2017-02-15 16:29:57',NULL,NULL,1,NULL,0),(155,5,2,NULL,37,NULL,'3.报名费多少钱？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">每科是</span>80元</span></p><p><br/></p>','2017-02-15 16:30:20',NULL,NULL,1,NULL,0),(156,5,2,NULL,37,NULL,'4.报名时间和考试时间是什么时候？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间一般在</span>4-5月和8-9月，考试时间一般在6月初和10月底11月初。</span></p><p><br/></p>','2017-02-15 16:30:30',NULL,NULL,1,NULL,0),(157,5,2,NULL,37,NULL,'5.一年几次考试？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">一年一般两次</span></span></p><p><br/></p>','2017-02-15 16:30:41','2017-02-15 16:30:57',5,1,NULL,0),(158,5,2,NULL,37,NULL,'6.考几科？都考啥？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考</span>2科，《银行业法律法规与综合能力》、《银行业专业实务》（其中《银行业专业实务》下设《个人理财》、《风险管理》、《公司信贷》、《个人贷款》、《银行管理》5个专业类别）</span></p><p><br/></p>','2017-02-15 16:31:08',NULL,NULL,1,NULL,0),(159,5,NULL,NULL,NULL,NULL,'7.考试有特设考点吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">没有的，通常在</span>200多个城市设置考点，您就近选择就好</span></p><p><br/></p>','2017-02-15 16:31:46',NULL,NULL,0,NULL,0),(160,5,2,NULL,37,NULL,'8.你们的培训有什么班型？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">我们的是冲刺辅导班。网络授课</span></span></p><p><br/></p>','2017-02-15 16:31:58',NULL,NULL,1,NULL,0),(161,5,2,NULL,37,NULL,'9.你们的保过班多少钱？','<p>498一科的<br/></p><p><br/></p>','2017-02-15 16:32:26',NULL,NULL,1,NULL,0),(162,5,2,NULL,37,NULL,'10.老学员有优惠吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">有的，您可以留下电话，专业老师给您详细说一下老学员的优惠政策，您做个了解</span></span></p><p><br/></p>','2017-02-15 16:32:35',NULL,NULL,1,NULL,0),(163,5,2,NULL,39,NULL,'报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">对于学历和工作年限有要求，您说下您的情况，我帮您看下是否符合（学员说后继续引导）</span></span></p><p><br/></p>','2017-02-15 16:33:21',NULL,NULL,1,NULL,0),(164,5,2,NULL,39,NULL,'2.中级经济师怎么报名？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">需要登录人事考试网，进行报考的。</span></span></p><p><br/></p>','2017-02-15 16:33:30',NULL,NULL,1,NULL,0),(165,5,2,NULL,39,NULL,'3.中级经济师考几科？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考两科，但是有三个实务是选考的，（专业知识与实务、工商管理知识与实务、财政税收专业知识与实务、这个可说可不说，看咨询的语境决定）</span></span></p><p><br/></p>','2017-02-15 16:33:40',NULL,NULL,1,NULL,0),(166,5,2,NULL,39,NULL,'4.报名费是多少啊？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">一科</span>64元的，但是具体要看您当地的要求</span></p><p><br/></p>','2017-02-15 16:33:52',NULL,NULL,1,NULL,0),(167,5,2,NULL,39,NULL,'5.你们有保过班？咋保过啊？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">有的，我们的保过班涵盖考点</span>100%，时间短，针对0基础的学员特设的班型，在报考</span><span style=\"font-family: 宋体; font-size: 14px; text-indent: 28px;\">前期需要签订保过协议，不过可以重新免费再学的。</span></p><p><br/></p>','2017-02-15 16:34:13',NULL,NULL,1,NULL,0),(168,5,2,NULL,39,NULL,'你们公司课程怎么样？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">您好，我们已经做了</span>6<span style=\"font-family:宋体\">年的金融行业资格证考前培训，随着发展，现在公司已将高清网课和面授相结合并有名师全天一对一答疑，完整的培训系统体系，您这边基础如何？为了节约您的时间，您也可以留下您的电话，我让咱们专业老师在您方便的时候为您详细介绍课程内容和服务。</span></span></p><p><br/></p>','2017-02-15 16:34:24',NULL,NULL,1,NULL,0),(169,5,2,NULL,39,NULL,'6.您是首次报考吗？（之前因为什么没过呢？）','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">您好，很多考生主要是知识点和应试技巧不足造成考试失败，我想您也是因为这两点吧？目前，华金培训特别针对有这类问题的考生，举办</span>“<span style=\"font-family:Calibri\">1298</span><span style=\"font-family:宋体\">元课程免费试听”活动，您可以留下电话和方便接听时间？我需要记录相关信息，为您申报，专业老师会在您方便的时候电话联系您，为您免费开通试听课程。</span></span></p><p><br/></p>','2017-02-15 16:34:56',NULL,NULL,1,NULL,0),(170,5,2,NULL,39,NULL,'7.如果报你们的班，不过咋办啊？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">您好，您只要按照咱们</span>vip<span style=\"font-family:宋体\">保过班的流程走，就一定可以通过，因为我们是诚心为了学员考虑，也为了我们的口碑，全力帮助学员一次性通过。打字一句两句说不清，您的联系方式是？我立即让专业老师给您回电介绍班型内容</span></span></p><p><br/></p>','2017-02-15 16:35:08',NULL,NULL,1,NULL,0),(171,5,2,NULL,39,NULL,'8.这个培训需要培训多久啊？我没有那么多的时间啊！','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">您好，具体课时情况需要根据您的基础来定，这边是网授与面授相结合的班型，从零基础到冲刺班不等，班型设计非常科学，您现在方便接通电话吗？为了节约您的时间，我让咱们当地老师在您方便的时候给您电话详细介绍咱们的班型和服务内容，会根据您的具体情况为您规划一个最适合您的班型。</span></span></p><p><br/></p>','2017-02-15 16:35:18',NULL,NULL,1,NULL,0),(172,5,2,NULL,39,NULL,'9.你们都有什么培训班？怎么授课啊？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">我们是有保过班的，都是网授的形式进行授课的。</span></span></p><p><br/></p>','2017-02-15 16:35:27',NULL,NULL,1,NULL,0),(173,5,2,NULL,39,NULL,'那你们的培训需要多长时间啊？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">看您选择的是什么实务，选择的实务不同，时间也是不同的，您方便的话留个电话，专业老师给您详细介绍一下具体的班型介绍和培训时长以及收费标准。</span></span></p><p><br/></p>','2017-02-15 16:35:37',NULL,NULL,1,NULL,0),(174,5,2,NULL,39,NULL,'11.考试成绩一般多长时间能出来呢？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">一般都在考后的两个月左右进行查询。</span></span></p><p><br/></p>','2017-02-15 16:35:50',NULL,NULL,1,NULL,0),(175,5,2,NULL,39,NULL,'12.报名和考试时间一般在每年的什么时候？','<p><span style=\";font-family:宋体;font-size:14px\"><span style=\"font-family:宋体\">报名时间一般在</span>5<span style=\"font-family:宋体\">、</span><span style=\"font-family:Calibri\">6</span><span style=\"font-family:宋体\">、</span><span style=\"font-family:Calibri\">7</span><span style=\"font-family:宋体\">月，但是根据各地时间不同，考试时间一般在</span><span style=\"font-family:Calibri\">11</span><span style=\"font-family:宋体\">月初进行。</span></span></p><p><br/></p>','2017-02-15 16:35:59',NULL,NULL,1,NULL,0),(176,5,2,NULL,8,NULL,'班型咋这么贵呢？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">这个课程不贵的，我们的课程是有保障的，首先您报班肯定是想通过考试对吧，我们华金就能让您一次性省时省力的通过考试，并且我们的后续服务也是非常好的，您考试通过以后的所有的后续继续教育华金都是终身免费帮您修的，您也可以留下电话，专业老师给您详细介绍一下，您也好快速的了解。</span></span></p><p><br/></p>','2017-02-15 16:50:41',NULL,NULL,1,NULL,0),(177,5,NULL,NULL,NULL,NULL,'7.你们这个课程时间这么短，能行吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">好</span>,我们这个课程虽然时间短,但是涵盖考点是100%的,而且很多学员都感觉时间越短越好, 针对没有时间学习的上班族,我们的网络课程仅18个小时.而且我们老师都是精讲的,讲一个考点比您在别的机构听一个小时的课程都有用.</span></p><p><br/></p>','2017-02-15 16:51:27',NULL,NULL,0,NULL,0),(178,5,2,NULL,8,NULL,'7.你们这个课程时间这么短，能行吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">您好</span>,我们这个课程虽然时间短,但是涵盖考点是100%的,而且很多学员都感觉时间越短越好, 针对没有时间学习的上班族,我们的网络课程仅18个小时.而且我们老师都是精讲的,讲一个考点比您在别的机构听一个小时的课程都有用.</span></p><p><br/></p>','2017-02-15 16:52:02',NULL,NULL,1,NULL,0),(179,5,2,NULL,8,NULL,'8.报名费多少钱啊？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP是890元,CFP有5科，加起来一共是1780元，（单科投资：450元，税务225元，福利225元，保险370元，综合510元）。</span></p><p><br/></p>','2017-02-15 18:40:59',NULL,NULL,1,NULL,0),(180,5,2,NULL,8,NULL,'9.是不是我给你们交钱，你们就一定能让我拿到证，不上课行不行呢？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">不行的，我们能做到的就是，给您最精确的考点，保证您最短的时间内掌握，只要认真学习，就一定可以考过的</span></span></p><p><br/></p>','2017-02-15 18:41:11',NULL,NULL,1,NULL,0),(181,5,2,NULL,8,NULL,'我报的是AFP的网络保过班，能过吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">网络班和面授班肯定是有一定的差距的，但是我们的网络视频和面授所讲的内容是一致的，只要您认真学习视频，对照视频复习我们的课件，并做好章节测试，阶段测试以及去全真模拟考试，通过肯定是没问题的。</span></span></p><p><br/></p>','2017-02-15 18:41:27',NULL,NULL,1,NULL,0),(182,5,2,NULL,8,NULL,'11.不是学金融专业的，可以考AFP吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">那您是否打算将来从事金融行业呢？如果从事，那您是可以考的，但是由于您的工作经历不够，就算考试通过了，您是拿不到证书的，只是全职工作经验满三年或者兼职工作尽管满</span>6000小时，后再申请认证就可以拿到证书了。</span></p><p><br/></p>','2017-02-15 18:41:37',NULL,NULL,1,NULL,0),(183,5,2,NULL,8,NULL,'12.AFP考几科？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考一科，金融理财原理，但是分上下午考的</span></span></p><p><br/></p>','2017-02-15 18:41:51',NULL,NULL,1,NULL,0),(184,5,2,NULL,8,NULL,'12.AFP考几科？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考一科，金融理财原理，但是分上下午考的</span></span></p><p><br/></p>','2017-02-15 18:41:51',NULL,NULL,1,NULL,0),(185,5,2,NULL,8,NULL,'13.成绩有效期是多久呢？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP:四年内有效的。CFP：5年内有效的</span></p><p><br/></p>','2017-02-15 18:42:00',NULL,NULL,1,NULL,0),(186,5,2,NULL,8,NULL,'14.发证机构是哪里呢？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">国际金融理财彼岸准委员会（金标委或者标委会）</span></span></p><p><br/></p>','2017-02-15 18:42:11',NULL,NULL,1,NULL,0),(187,5,2,NULL,8,NULL,'15.官方培训费多少？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP：网授是8280元，面授是13980元；CFP：网授是11680元，面授是16880元。</span></p><p><br/></p>','2017-02-15 18:42:22',NULL,NULL,1,NULL,0),(189,5,2,NULL,23,NULL,'CFP考几科？都考啥？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考</span>5科，包含《投资》、《税务》、《福利》、《保险》、《综合》5门</span></p><p><br/></p>','2017-02-15 18:42:54',NULL,NULL,1,NULL,0),(191,5,2,NULL,8,NULL,'17.AFP和CFP一年都有多少次的考试呢？','<p><span style=\"font-family: 宋体;font-size: 14px\">AFP一年有50次的考试的，CFP一年有12次的考试</span></p><p><br/></p>','2017-02-15 18:43:47',NULL,NULL,1,NULL,0),(192,5,2,NULL,8,NULL,'18.AFP的考试成绩啥时候出来？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">每次考试结束后一周左右通过官网查询。</span></span></p><p><br/></p>','2017-02-15 18:43:55',NULL,NULL,1,NULL,0),(193,5,2,NULL,23,NULL,'CFP的考试成绩啥时候出来？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">考试结束后两周左右官网进行发布查询</span></span></p><p><br/></p>','2017-02-15 18:44:14',NULL,NULL,1,NULL,0),(194,5,2,NULL,8,NULL,'怎么继续教育呢？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">您需要先登录官网来进行操作，然后充值，方便的话留个电话，专业老师给您详细介绍一下</span></span></p><p><br/></p>','2017-02-15 18:44:40',NULL,NULL,1,NULL,0),(195,5,2,NULL,8,NULL,'21.认证流程是啥？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">您是首次认证吗？首次认证和再认证是不一样的。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">再认证？</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;&nbsp;&nbsp;<span style=\"font-family:宋体\">您现在继续教育的学分学够了吗？学够后登陆官网。</span></span></p><p><br/></p>','2017-02-15 18:44:59',NULL,NULL,0,NULL,0),(196,5,NULL,NULL,NULL,NULL,'你们的AFP保过班多少钱？怎么授课？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">面授和网授不一样，面授是</span>7160元（但是根据您的地域而定，北京、天津、河北是6060，其他地区是7160）网授是2980元的。</span></p><p><br/></p>','2017-02-15 18:46:18',NULL,NULL,0,NULL,0),(197,5,2,NULL,23,NULL,'你们的AFP保过班多少钱？怎么授课？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">面授和网授不一样，面授是</span>7160元（但是根据您的地域而定，北京、天津、河北是6060，其他地区是7160）网授是2980元的。</span></p><p><br/></p>','2017-02-15 18:46:43',NULL,NULL,1,NULL,0),(198,5,2,NULL,23,NULL,'你们的CFP保过班怎么收费的？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">不同科目价钱不同的，您是想参加一科还是全科的培训呢？网授的单科是投资</span>1980元，其他4科是每科1680元，北京地区的面授是投资2380元，其他四科每科是2080元。</span></p><p><br/></p>','2017-02-15 18:47:11',NULL,NULL,1,NULL,0),(199,5,2,NULL,23,NULL,'你们华金的通过率是多少？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">保过班的通过率</span>AFP的是95%，CFP是80%</span></p><p><br/></p>','2017-02-15 18:47:32',NULL,NULL,1,NULL,0),(200,5,2,NULL,23,NULL,'老学员有优惠吗？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">有的，老学员全科优惠</span>500元。</span></p><p><br/></p>','2017-02-15 18:47:49',NULL,NULL,1,NULL,0),(201,5,2,NULL,28,NULL,'1.报考条件是什么？','<p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">对于学历和工作年限有要求，您说下您的情况，我帮您看下是否符合（学员说后继续引导）</span></span></p><p><br/></p>','2017-02-15 18:49:32',NULL,NULL,1,NULL,0),(202,39,16,NULL,10,NULL,'','<p><img src=\"/ueditor/jsp/upload/image/20170317/1489749882788074757.png\" title=\"1489749882788074757.png\" alt=\"标准电话话术.png\"/></p>','2017-03-17 19:24:51',NULL,NULL,0,NULL,0),(203,1,1,NULL,8,NULL,'','<p><span style=\"text-decoration: underline; color: rgb(84, 141, 212);\"><em><strong>发生的发烧反复</strong></em></span><br/></p>','2017-04-24 10:56:14',NULL,NULL,0,NULL,0),(204,1,NULL,NULL,NULL,NULL,'','<p><span style=\"text-decoration: underline; border: 1px solid rgb(0, 0, 0); color: rgb(247, 150, 70);\"><em><strong>驱蚊器翁群翁</strong></em></span></p>','2017-04-24 10:56:45',NULL,NULL,0,NULL,0),(205,1,NULL,NULL,NULL,NULL,'23333','<p>手动阀手<span style=\"color: rgb(255, 0, 0);\">动阀地方</span></p>','2017-05-11 10:22:18',NULL,NULL,0,NULL,0),(206,1,1,NULL,37,NULL,'照片内容哦','<p><img src=\"http://img.baidu.com/hi/jx2/j_0039.gif\"/>w<span style=\"background-color: rgb(255, 0, 0);\">www<img src=\"/ueditor/jsp/upload/image/20170527/1495871102037057343.png\" title=\"1495871102037057343.png\" alt=\"image.png\"/></span></p>','2017-05-27 15:45:07','2017-05-27 15:45:27',1,0,NULL,0),(207,1,1,NULL,38,NULL,'ddddddddd','<p>zvzvadfadf<img src=\"http://img.baidu.com/hi/jx2/j_0030.gif\"/></p>','2017-06-14 16:14:18',NULL,NULL,0,NULL,0),(208,1,NULL,NULL,NULL,NULL,'','<p>dsfasd<img src=\"http://img.baidu.com/hi/jx2/j_0018.gif\"/>fasdf</p>','2017-06-14 16:19:08',NULL,NULL,0,NULL,0),(209,1,1,NULL,37,NULL,'','<p><strong>123123123<img src=\"http://img.baidu.com/hi/jx2/j_0017.gif\"/></strong></p>','2017-09-12 15:28:34',NULL,NULL,0,NULL,0),(210,1,1,NULL,37,NULL,'333333333333333333','<p>是范德萨发<span style=\"text-decoration: underline;\"><strong>生大发撒打</strong></span>发第三方<img src=\"http://img.baidu.com/hi/jx2/j_0020.gif\"/></p>','2017-09-20 15:38:15',NULL,NULL,0,NULL,0),(211,1,1,NULL,40,NULL,'222222222222222','<p>22222222222244444</p>','2017-11-10 16:58:58','2017-11-10 17:05:06',1,0,NULL,0),(212,1,NULL,NULL,NULL,NULL,'asdfasdfadf','<p>adfadsfa<img src=\"http://img.baidu.com/hi/jx2/j_0008.gif\"/></p>','2017-11-10 17:05:27',NULL,NULL,0,NULL,0),(213,1,1,NULL,40,NULL,'adsfasdfasdf','<p>adfadfasdf<img src=\"http://img.baidu.com/hi/jx2/j_0019.gif\"/></p>','2017-11-10 17:05:40',NULL,NULL,0,NULL,0),(214,2,2,NULL,40,NULL,'你好啊','<p>&nbsp;&nbsp;&nbsp;&nbsp;哈哈哈哈哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0009.gif\"/></p>','2018-03-26 15:43:26',NULL,NULL,0,NULL,0),(215,2,NULL,NULL,NULL,NULL,'werwer','<p>asdfadsfadfadf<img src=\"http://img.baidu.com/hi/jx2/j_0011.gif\"/></p>','2018-03-26 15:54:17',NULL,NULL,0,NULL,0),(216,1,NULL,NULL,NULL,NULL,'fasdf','<p>asdfasdfasdf<img src=\"http://img.baidu.com/hi/jx2/j_0039.gif\"/></p>','2018-05-24 09:20:30',NULL,NULL,0,NULL,0),(217,1,1,NULL,43,NULL,'价格','<p>adfadfasdf</p>','2018-05-30 09:06:27',NULL,NULL,0,NULL,0),(218,1,1,NULL,40,NULL,'','<p><span style=\"text-decoration: underline;\"><strong>asdfasf<img src=\"http://img.baidu.com/hi/jx2/j_0019.gif\"/></strong></span><br/></p>','2018-07-30 16:02:07',NULL,NULL,0,NULL,0),(219,1,NULL,NULL,NULL,NULL,'dfasdfasdfadsf','<p>asdfad<strong>sfasdfas</strong>df<img src=\"http://img.baidu.com/hi/jx2/j_0009.gif\"/></p>','2018-10-08 14:06:40',NULL,NULL,0,NULL,0);

/*Table structure for table `hj_pattercontenttype` */

DROP TABLE IF EXISTS `hj_pattercontenttype`;

CREATE TABLE `hj_pattercontenttype` (
  `contentTypeId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '话术内容类别主键ID',
  `contentTypeName` varchar(100) DEFAULT NULL COMMENT '话术内容类别名称',
  `patterTypeId` bigint(20) DEFAULT NULL COMMENT '所属场景ID',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `dr` int(1) DEFAULT NULL COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`contentTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='话术内容类别';

/*Data for the table `hj_pattercontenttype` */

/*Table structure for table `hj_pattertype` */

DROP TABLE IF EXISTS `hj_pattertype`;

CREATE TABLE `hj_pattertype` (
  `patterTypeId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '话术场景类别主键',
  `patterTypeName` varchar(100) DEFAULT NULL COMMENT '话术场景类别名称',
  `courseid` bigint(20) DEFAULT NULL COMMENT '所属课程ID',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`patterTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='话术场景类别';

/*Data for the table `hj_pattertype` */

insert  into `hj_pattertype`(`patterTypeId`,`patterTypeName`,`courseid`,`create_id`,`create_time`,`update_id`,`update_time`,`dr`) values (37,'话术',3,5,'2017-02-15 15:42:41',NULL,NULL,0),(38,'话术',7,5,'2017-02-15 15:45:30',NULL,NULL,0),(39,'话术',4,5,'2017-02-15 16:33:09',NULL,NULL,0),(40,'场景1',0,1,'2017-11-10 16:31:44',1,'2017-11-10 16:31:48',0),(42,'场景2',0,1,'2017-11-10 16:46:40',NULL,NULL,0),(43,'777',5,1,'2018-05-30 09:03:00',NULL,NULL,0);

/*Table structure for table `hj_resource` */

DROP TABLE IF EXISTS `hj_resource`;

CREATE TABLE `hj_resource` (
  `resourceId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '资源主键ID',
  `billno` bigint(50) DEFAULT NULL COMMENT '单据号',
  `userid` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `deptid` bigint(20) DEFAULT NULL COMMENT '创建人部门ID',
  `belongid` bigint(20) DEFAULT NULL COMMENT '分配销售人员ID',
  `createrName` varchar(20) DEFAULT NULL COMMENT '资源创建者姓名',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '资源创建时间',
  `resourceName` varchar(20) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `weixin` varchar(50) DEFAULT NULL COMMENT '微信',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `address` varchar(20) DEFAULT NULL COMMENT '地区',
  `sex` int(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `studentstate` int(2) DEFAULT NULL COMMENT '学员状态 0新增 1已成交 2已提交 3已到账 4已分配 5已转入 6已通过考试 7已关课 8已退回',
  `state` int(3) DEFAULT '0' COMMENT '资源状态  0未分配 1已分配(未处理) 2已处理',
  `isStudent` int(1) DEFAULT '0' COMMENT '是否为学员  0资源 1学员',
  `source` int(3) DEFAULT NULL COMMENT '渠道: 0自建  1课程注册  2在线注册  3app下载注册   4电话咨询   5金考网注册用户   6线上渠道  7在线咨询  8大库资源 9 在线购买',
  `courseid` int(3) DEFAULT NULL COMMENT '咨询课程 0基金从业 1AFP 2CFP 3中级经济师 4期货从业 5证券从业 6银行初级 7初级会计师 8会计从业',
  `yunYingResourceLevel` varchar(2) DEFAULT NULL COMMENT '运营资源等级',
  `resourceLevel` varchar(2) DEFAULT NULL COMMENT '资源等级     A B C D',
  `assignTime` timestamp NULL DEFAULT NULL COMMENT '资源分配时间',
  `firstVisitTime` timestamp NULL DEFAULT NULL COMMENT '首次回访时间',
  `nextVisitTime` timestamp NULL DEFAULT NULL COMMENT '下次回访时间',
  `yunYingNote` varchar(300) DEFAULT NULL COMMENT '运营备注',
  `xiaoShouNote` varchar(200) DEFAULT NULL COMMENT '销售备注',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  `resourceColor` varchar(100) DEFAULT NULL COMMENT '资源星级客户颜色',
  `isolddata` int(1) DEFAULT '0' COMMENT '是否历史数据 0否 1是',
  `isZhuanyi` int(1) DEFAULT '0' COMMENT '是否转移',
  `idCard` varchar(30) DEFAULT NULL COMMENT '身份证',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`resourceId`),
  KEY `index_name` (`userid`),
  KEY `index_name1` (`belongid`),
  KEY `index_name2` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='资源表';

/*Data for the table `hj_resource` */

insert  into `hj_resource`(`resourceId`,`billno`,`userid`,`deptid`,`belongid`,`createrName`,`create_time`,`resourceName`,`phone`,`tel`,`weixin`,`qq`,`address`,`sex`,`studentstate`,`state`,`isStudent`,`source`,`courseid`,`yunYingResourceLevel`,`resourceLevel`,`assignTime`,`firstVisitTime`,`nextVisitTime`,`yunYingNote`,`xiaoShouNote`,`update_id`,`update_time`,`dr`,`resourceColor`,`isolddata`,`isZhuanyi`,`idCard`,`email`) values (4,NULL,2,2,26,'张三','2017-11-13 10:22:27','姓名','18987656789','010-98765675','','','北京',1,NULL,1,0,1,1,NULL,NULL,NULL,NULL,NULL,'备注',NULL,2,'2017-11-13 10:38:59',0,'rgb(251, 140, 140)',0,0,NULL,NULL),(6,NULL,26,13,26,'李四','2017-11-13 12:57:31','第三方','18922222222','','','','广东',0,2,2,1,2,2,NULL,'A','2017-11-13 21:09:09',NULL,NULL,'撒发达','沙发大声道',71,'2017-11-15 10:11:03',0,'rgb(251, 140, 140)',0,1,'1101191120120120120120','3333@qq.com'),(7,NULL,26,13,26,'李四','2017-11-13 17:02:06','333','13513412323','','','','北京',NULL,8,2,1,2,1,NULL,'A','2017-11-13 21:07:08',NULL,NULL,NULL,'大发送到',26,'2017-11-14 16:56:36',0,'',0,1,'123123123123123123','22222@qq.com'),(8,NULL,26,13,26,'李四','2017-11-13 17:04:31','打发撒的发生的','1898765678','',NULL,NULL,'上海',NULL,NULL,1,0,2,1,NULL,NULL,'2017-11-14 11:02:55',NULL,NULL,NULL,'北大',NULL,NULL,0,'',0,1,NULL,NULL),(9,NULL,2,2,26,'张三','2017-11-13 21:10:29','www','123123','','','','天津',NULL,NULL,1,0,2,6,NULL,NULL,'2017-11-13 21:10:34',NULL,NULL,'2123123',NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(10,NULL,4,NULL,NULL,'张三','2017-11-14 09:17:02','姓名',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(11,NULL,26,13,42,'李四','2017-11-15 11:03:38','你好','1897828238329','',NULL,NULL,'北京',NULL,NULL,1,0,2,2,NULL,'A',NULL,NULL,NULL,NULL,'备注',NULL,NULL,0,NULL,0,0,NULL,NULL),(12,NULL,42,13,42,'李四','2017-11-15 11:04:03','阿斯顿发生','123123123123','123123','','','河北',NULL,1,1,1,7,2,NULL,'A',NULL,NULL,NULL,NULL,'123123',42,'2017-12-18 14:49:09',0,NULL,0,0,'1231231231231231232','444@qq.com'),(13,NULL,2,NULL,42,'张三','2017-12-18 09:07:12','java123123123','18987898767','123123','123123','123123','北京',NULL,NULL,1,0,1,1,NULL,NULL,NULL,NULL,NULL,'123123',NULL,2,'2017-12-18 11:22:31',0,'rgb(251, 140, 140)',0,0,NULL,NULL),(15,NULL,2,NULL,42,'张三','2017-12-18 15:08:12','你好java','18987656789','010-10929299','weixin','1234234443','北京',NULL,NULL,1,0,1,1,NULL,NULL,NULL,NULL,NULL,'这是一个备注',NULL,NULL,NULL,0,'',0,0,NULL,NULL),(16,NULL,42,15,42,'张三','2017-12-18 15:08:54','撒的发生的as','123123123123','231231','23123','123123','北京',NULL,NULL,2,0,3,11,'A','A',NULL,NULL,NULL,'1231231','',42,'2018-07-30 16:21:05',0,'rgb(251, 140, 140)',0,0,'',''),(17,NULL,4,NULL,NULL,'张三','2017-12-19 08:14:09','姓名',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(18,NULL,4,NULL,NULL,'张三','2017-12-19 08:15:34','姓名',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(19,NULL,4,NULL,NULL,'张三','2017-12-19 09:26:43','java123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(20,NULL,4,NULL,NULL,'张三','2017-12-19 10:24:29','java123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),(21,NULL,42,15,42,'张三','2018-01-22 10:46:08','asfadfadfadsf333','13567989872','123123','123123','123123','北京',NULL,2,2,1,1,1,'B','B','2018-05-30 15:31:20',NULL,NULL,'123123123','',42,'2018-07-30 16:13:40',0,NULL,0,1,'123123123123123123123','12312@qq.com'),(22,NULL,42,15,42,'张三','2018-01-22 10:47:01','123123','13567989872','2222333','44444','5','北京',NULL,NULL,2,0,1,1,'A','A','2018-10-08 14:10:07',NULL,NULL,'22222','',42,'2018-10-08 14:16:13',0,NULL,0,0,'',''),(23,NULL,42,15,42,'张三','2018-07-30 16:06:34','1231','18912331233','123','123','123','辽宁',NULL,NULL,2,0,1,3,'A','A','2018-07-30 16:10:24',NULL,NULL,'1231231231','',42,'2018-07-30 16:12:25',0,NULL,0,1,'',''),(24,NULL,42,15,42,'张三','2018-09-04 10:29:33','ceshi123123','18912371239','010-12346456','kjadsifjla','19827398123','北京',NULL,5,3,1,1,1,'B','B','2018-09-04 10:29:41',NULL,NULL,'这是一个备注字段','',42,'2018-09-04 10:30:38',0,NULL,0,0,'360822198609284091','adsf@qq.com'),(25,NULL,42,15,42,'张三','2018-10-08 14:13:34','zhaaaaaaaaa','18912312323','123','12312','3123123','北京',NULL,3,2,1,1,1,NULL,'','2018-10-08 14:14:30',NULL,NULL,'123','',42,'2018-10-08 14:17:51',0,NULL,0,0,'150624197307108592','123123@qq.com');

/*Table structure for table `hj_role` */

DROP TABLE IF EXISTS `hj_role`;

CREATE TABLE `hj_role` (
  `roleid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `rolename` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `deptid` bigint(20) DEFAULT NULL COMMENT '所属部门ID',
  `dr` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='CRM角色表';

/*Data for the table `hj_role` */

insert  into `hj_role`(`roleid`,`rolename`,`deptid`,`dr`,`create_time`,`create_id`,`update_time`,`update_id`) values (1,'超级管理员',1,0,NULL,NULL,'2016-12-01 15:17:42',1),(2,'运营主管',2,0,'2016-11-24 17:43:51',1,NULL,NULL),(3,'运营员',2,0,'2016-11-24 17:44:43',1,NULL,NULL),(4,'信念团战队主管(A/C)',9,0,'2016-11-24 17:45:54',1,NULL,NULL),(5,'信念团战队组员(A/C)',9,0,'2016-11-24 17:46:15',1,NULL,NULL),(6,'无敌战队主管(A/C)',10,0,'2016-11-24 17:46:48',1,NULL,NULL),(7,'无敌战队组员(A/C)',10,0,'2016-11-24 17:47:01',1,NULL,NULL),(8,'雷霆战队主管(A/C)',11,0,'2016-11-24 17:47:17',1,NULL,NULL),(9,'雷霆战队组员(A/C)',11,0,'2016-11-24 17:47:28',1,NULL,NULL),(10,'同路人战队主管(A/C)',12,0,'2016-11-24 17:47:42',1,NULL,NULL),(11,'同路人战队组员(A/C)',12,0,'2016-11-24 17:47:53',1,'2016-11-24 17:48:45',1),(12,'电话销售组主管(A/C)',13,0,'2016-11-24 17:48:11',1,NULL,NULL),(13,'电话销售组组员(A/C)',13,0,'2016-11-24 17:48:23',1,NULL,NULL),(14,'小鲜肉组主管(A/C)',14,0,'2016-11-24 17:48:38',1,NULL,NULL),(15,'小鲜肉组组员(A/C)',14,0,'2016-11-24 17:48:57',1,NULL,NULL),(16,'战狼英雄连战队主管(非A/C)',15,0,'2016-11-24 17:49:27',1,'2016-11-25 11:54:26',1),(17,'战狼英雄连战队组员(非A/C)',15,0,'2016-11-24 17:50:07',1,'2016-11-25 11:54:33',1),(18,'刘大战队主管(非A/C)',16,0,'2016-11-24 17:51:07',1,NULL,NULL),(19,'刘大战队组员(非A/C)',16,0,'2016-11-24 17:51:21',1,NULL,NULL),(20,'AFP张三组主管',17,0,'2016-11-24 17:51:54',1,'2016-11-24 17:52:34',1),(21,'AFP张三组组员',17,0,'2016-11-24 17:52:27',1,NULL,NULL),(22,'AFP组主管',18,0,'2016-11-24 17:53:02',1,NULL,NULL),(23,'AFP组组员',18,0,'2016-11-24 17:53:14',1,NULL,NULL),(24,'CFP组主管',19,0,'2016-11-24 17:53:34',1,NULL,NULL),(25,'CFP组组员',19,0,'2016-11-24 17:53:54',1,NULL,NULL),(26,'非AC王五组主管',20,0,'2016-11-24 17:54:11',1,NULL,NULL),(27,'非AC王五组组员(基中会证)',20,0,'2016-11-24 17:54:24',1,'2016-11-24 18:08:03',1),(28,'非AC王五组组员(基银期证)',20,0,'2016-11-24 18:09:49',1,NULL,NULL),(29,'非AC王五组组员(基中)',20,0,'2016-11-24 18:10:21',1,NULL,NULL),(30,'非AC王五组组员(基银)',20,0,'2016-11-24 18:11:03',1,NULL,NULL),(31,'行政部主管',4,0,'2016-11-25 10:48:12',1,NULL,NULL),(32,'行政部组员',4,0,'2016-11-25 10:48:21',1,NULL,NULL),(33,'财务主管',3,0,'2016-11-25 10:49:51',1,NULL,NULL),(34,'财务员',3,0,'2016-11-25 10:50:02',1,NULL,NULL),(35,'管理员',1,0,'2016-12-01 15:17:51',1,NULL,NULL),(36,'机构客户组',21,0,'2016-12-07 09:48:43',1,NULL,NULL),(37,'南京代理主管',22,0,'2016-12-07 09:50:30',1,'2016-12-07 09:54:11',1),(38,'南京代理组员',22,0,'2016-12-07 09:53:07',1,'2016-12-07 09:54:19',1),(39,'苏州代理主管',23,0,'2016-12-07 09:54:02',1,NULL,NULL),(40,'苏州代理组员',23,0,'2016-12-07 09:54:32',1,NULL,NULL),(41,'西安代理主管',24,0,'2016-12-07 09:54:48',1,NULL,NULL),(42,'西安代理组员',24,0,'2016-12-07 09:54:56',1,NULL,NULL),(43,'重庆代理主管',25,0,'2016-12-07 09:55:12',1,NULL,NULL),(44,'重庆代理组员',25,0,'2016-12-07 09:55:18',1,NULL,NULL),(45,'新疆代理主管',26,0,'2016-12-07 09:55:29',1,NULL,NULL),(46,'新疆代理组员',26,0,'2016-12-07 09:55:36',1,NULL,NULL),(47,'泰州代理主管',27,0,'2016-12-07 09:55:50',1,NULL,NULL),(48,'泰州代理组员',27,0,'2016-12-07 09:55:56',1,NULL,NULL),(49,'关系客户部主管',29,0,'2016-12-09 15:45:58',1,NULL,NULL),(50,'关系客户部组员',29,0,'2016-12-09 15:46:25',1,NULL,NULL),(51,'公司资源管理',30,0,'2016-12-13 19:00:58',1,NULL,NULL),(52,'销售部通用角色',5,0,'2016-12-22 10:32:37',1,NULL,NULL),(53,'ceshi',2,0,'2018-03-06 08:54:06',1,NULL,NULL),(54,'ces',2,0,'2018-03-06 08:54:06',1,NULL,NULL);

/*Table structure for table `hj_role_menu` */

DROP TABLE IF EXISTS `hj_role_menu`;

CREATE TABLE `hj_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `roleid` bigint(20) DEFAULT NULL COMMENT '角色id',
  `menuid` bigint(20) DEFAULT NULL COMMENT '菜单id',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3996 DEFAULT CHARSET=utf8 COMMENT='角色-菜单-对照表';

/*Data for the table `hj_role_menu` */

insert  into `hj_role_menu`(`id`,`roleid`,`menuid`,`dr`) values (1680,37,57,0),(1681,37,58,0),(1682,37,60,0),(1683,37,15,0),(1684,37,16,0),(1685,37,17,0),(1686,39,57,0),(1687,39,58,0),(1688,39,60,0),(1689,39,15,0),(1690,39,16,0),(1691,39,17,0),(1692,41,57,0),(1693,41,58,0),(1694,41,60,0),(1695,41,15,0),(1696,41,16,0),(1697,41,17,0),(1698,43,57,0),(1699,43,58,0),(1700,43,60,0),(1701,43,15,0),(1702,43,16,0),(1703,43,17,0),(1704,45,57,0),(1705,45,58,0),(1706,45,60,0),(1707,45,15,0),(1708,45,16,0),(1709,45,17,0),(1710,47,57,0),(1711,47,58,0),(1712,47,60,0),(1713,47,15,0),(1714,47,16,0),(1715,47,17,0),(1788,48,57,0),(1789,48,58,0),(1790,48,60,0),(1791,48,15,0),(1792,48,16,0),(1793,48,17,0),(1794,46,57,0),(1795,46,58,0),(1796,46,60,0),(1797,46,15,0),(1798,46,16,0),(1799,46,17,0),(2615,21,57,0),(2616,21,58,0),(2617,21,18,0),(2618,21,19,0),(2619,21,85,0),(2620,21,20,0),(2621,21,84,0),(2622,21,21,0),(2623,21,78,0),(2624,21,79,0),(2625,21,62,0),(2626,21,80,0),(2627,21,96,0),(2628,22,57,0),(2629,22,58,0),(2630,22,18,0),(2631,22,19,0),(2632,22,85,0),(2633,22,20,0),(2634,22,84,0),(2635,22,21,0),(2636,22,78,0),(2637,22,79,0),(2638,22,62,0),(2639,22,80,0),(2640,22,96,0),(2641,23,57,0),(2642,23,58,0),(2643,23,18,0),(2644,23,19,0),(2645,23,85,0),(2646,23,20,0),(2647,23,84,0),(2648,23,21,0),(2649,23,78,0),(2650,23,79,0),(2651,23,62,0),(2652,23,80,0),(2653,23,96,0),(2654,24,57,0),(2655,24,58,0),(2656,24,18,0),(2657,24,19,0),(2658,24,85,0),(2659,24,86,0),(2660,24,84,0),(2661,24,70,0),(2662,24,78,0),(2663,24,79,0),(2664,24,62,0),(2665,24,80,0),(2666,24,96,0),(2667,25,57,0),(2668,25,58,0),(2669,25,18,0),(2670,25,19,0),(2671,25,85,0),(2672,25,86,0),(2673,25,84,0),(2674,25,70,0),(2675,25,78,0),(2676,25,79,0),(2677,25,62,0),(2678,25,80,0),(2679,25,96,0),(2680,26,57,0),(2681,26,58,0),(2682,26,18,0),(2683,26,19,0),(2684,26,85,0),(2685,26,87,0),(2686,26,88,0),(2687,26,89,0),(2688,26,90,0),(2689,26,91,0),(2690,26,92,0),(2691,26,93,0),(2692,26,84,0),(2693,26,71,0),(2694,26,72,0),(2695,26,73,0),(2696,26,74,0),(2697,26,75,0),(2698,26,76,0),(2699,26,77,0),(2700,26,78,0),(2701,26,79,0),(2702,26,62,0),(2703,26,80,0),(2704,26,96,0),(2705,27,57,0),(2706,27,58,0),(2707,27,18,0),(2708,27,19,0),(2709,27,85,0),(2710,27,87,0),(2711,27,89,0),(2712,27,90,0),(2713,27,92,0),(2714,27,84,0),(2715,27,71,0),(2716,27,73,0),(2717,27,74,0),(2718,27,76,0),(2719,27,78,0),(2720,27,79,0),(2721,27,62,0),(2722,27,80,0),(2723,27,96,0),(2724,28,57,0),(2725,28,58,0),(2726,28,18,0),(2727,28,19,0),(2728,28,85,0),(2729,28,87,0),(2730,28,88,0),(2731,28,90,0),(2732,28,91,0),(2733,28,84,0),(2734,28,71,0),(2735,28,72,0),(2736,28,74,0),(2737,28,75,0),(2738,28,78,0),(2739,28,79,0),(2740,28,62,0),(2741,28,80,0),(2742,28,96,0),(2743,29,57,0),(2744,29,58,0),(2745,29,18,0),(2746,29,19,0),(2747,29,85,0),(2748,29,87,0),(2749,29,89,0),(2750,29,84,0),(2751,29,71,0),(2752,29,73,0),(2753,29,78,0),(2754,29,79,0),(2755,29,62,0),(2756,29,80,0),(2757,29,96,0),(2758,30,57,0),(2759,30,58,0),(2760,30,18,0),(2761,30,19,0),(2762,30,85,0),(2763,30,87,0),(2764,30,88,0),(2765,30,84,0),(2766,30,71,0),(2767,30,72,0),(2768,30,78,0),(2769,30,79,0),(2770,30,62,0),(2771,30,80,0),(2772,30,96,0),(2773,31,12,0),(2774,31,13,0),(2775,31,64,0),(2776,31,63,0),(2777,31,65,0),(2778,31,67,0),(2779,31,68,0),(2780,31,62,0),(2781,31,80,0),(2782,31,96,0),(2783,32,12,0),(2784,32,13,0),(2785,32,64,0),(2786,32,63,0),(2787,32,65,0),(2788,32,67,0),(2789,32,68,0),(2790,32,62,0),(2791,32,80,0),(2792,32,96,0),(2793,33,9,0),(2794,33,94,0),(2795,33,10,0),(2796,33,83,0),(2797,33,80,0),(2798,33,96,0),(2799,34,9,0),(2800,34,94,0),(2801,34,10,0),(2802,34,83,0),(2803,34,62,0),(2804,34,80,0),(2805,34,96,0),(2806,36,1,0),(2807,36,2,0),(2808,36,57,0),(2809,36,58,0),(2810,36,60,0),(2811,36,15,0),(2812,36,16,0),(2813,36,17,0),(2814,36,62,0),(2815,36,80,0),(2816,36,96,0),(2817,49,57,0),(2818,49,58,0),(2819,49,60,0),(2820,49,15,0),(2821,49,16,0),(2822,49,17,0),(2823,49,62,0),(2824,49,80,0),(2825,49,96,0),(2826,50,57,0),(2827,50,58,0),(2828,50,60,0),(2829,50,15,0),(2830,50,16,0),(2831,50,17,0),(2832,50,62,0),(2833,50,80,0),(2834,50,96,0),(3149,5,57,0),(3150,5,58,0),(3151,5,15,0),(3152,5,16,0),(3153,5,17,0),(3154,5,62,0),(3155,5,80,0),(3156,5,96,0),(3165,7,57,0),(3166,7,58,0),(3167,7,15,0),(3168,7,16,0),(3169,7,17,0),(3170,7,62,0),(3171,7,80,0),(3172,7,96,0),(3181,9,57,0),(3182,9,58,0),(3183,9,15,0),(3184,9,16,0),(3185,9,17,0),(3186,9,62,0),(3187,9,80,0),(3188,9,96,0),(3216,11,57,0),(3217,11,58,0),(3218,11,15,0),(3219,11,16,0),(3220,11,17,0),(3221,11,62,0),(3222,11,80,0),(3223,11,96,0),(3232,13,57,0),(3233,13,58,0),(3234,13,15,0),(3235,13,16,0),(3236,13,17,0),(3237,13,62,0),(3238,13,80,0),(3239,13,96,0),(3248,15,57,0),(3249,15,58,0),(3250,15,15,0),(3251,15,16,0),(3252,15,17,0),(3253,15,62,0),(3254,15,80,0),(3255,15,96,0),(3264,17,57,0),(3265,17,58,0),(3266,17,15,0),(3267,17,16,0),(3268,17,17,0),(3269,17,62,0),(3270,17,80,0),(3271,17,96,0),(3280,19,57,0),(3281,19,58,0),(3282,19,15,0),(3283,19,16,0),(3284,19,17,0),(3285,19,62,0),(3286,19,80,0),(3287,19,96,0),(3299,52,57,0),(3300,52,58,0),(3301,52,60,0),(3302,52,15,0),(3303,52,16,0),(3304,52,17,0),(3305,52,62,0),(3306,52,80,0),(3307,52,96,0),(3335,6,57,0),(3336,6,58,0),(3337,6,15,0),(3338,6,16,0),(3339,6,17,0),(3340,6,103,0),(3341,6,62,0),(3342,6,80,0),(3343,6,96,0),(3344,8,57,0),(3345,8,58,0),(3346,8,15,0),(3347,8,16,0),(3348,8,17,0),(3349,8,103,0),(3350,8,62,0),(3351,8,80,0),(3352,8,96,0),(3353,10,57,0),(3354,10,58,0),(3355,10,15,0),(3356,10,16,0),(3357,10,17,0),(3358,10,103,0),(3359,10,62,0),(3360,10,80,0),(3361,10,96,0),(3362,12,57,0),(3363,12,58,0),(3364,12,15,0),(3365,12,16,0),(3366,12,17,0),(3367,12,103,0),(3368,12,62,0),(3369,12,80,0),(3370,12,96,0),(3371,14,57,0),(3372,14,58,0),(3373,14,15,0),(3374,14,16,0),(3375,14,17,0),(3376,14,103,0),(3377,14,62,0),(3378,14,80,0),(3379,14,96,0),(3389,18,57,0),(3390,18,58,0),(3391,18,15,0),(3392,18,16,0),(3393,18,17,0),(3394,18,103,0),(3395,18,62,0),(3396,18,80,0),(3397,18,96,0),(3398,35,1,0),(3399,35,2,0),(3400,35,59,0),(3401,35,61,0),(3402,35,95,0),(3403,35,57,0),(3404,35,58,0),(3405,35,60,0),(3406,35,6,0),(3407,35,7,0),(3408,35,8,0),(3409,35,102,0),(3410,35,15,0),(3411,35,16,0),(3412,35,17,0),(3413,35,97,0),(3414,35,103,0),(3415,35,12,0),(3416,35,13,0),(3417,35,64,0),(3418,35,63,0),(3419,35,65,0),(3420,35,67,0),(3421,35,68,0),(3422,35,9,0),(3423,35,94,0),(3424,35,10,0),(3425,35,83,0),(3426,35,18,0),(3427,35,19,0),(3428,35,85,0),(3429,35,20,0),(3430,35,86,0),(3431,35,87,0),(3432,35,88,0),(3433,35,89,0),(3434,35,90,0),(3435,35,91,0),(3436,35,92,0),(3437,35,93,0),(3438,35,84,0),(3439,35,21,0),(3440,35,70,0),(3441,35,71,0),(3442,35,72,0),(3443,35,73,0),(3444,35,74,0),(3445,35,75,0),(3446,35,76,0),(3447,35,77,0),(3448,35,78,0),(3449,35,79,0),(3450,35,62,0),(3451,35,80,0),(3452,35,96,0),(3533,16,57,0),(3534,16,58,0),(3535,16,15,0),(3536,16,16,0),(3537,16,17,0),(3538,16,103,0),(3539,16,104,0),(3540,16,62,0),(3541,16,80,0),(3542,16,96,0),(3588,53,98,0),(3589,53,99,0),(3600,51,6,0),(3601,51,7,0),(3602,51,97,0),(3603,51,98,0),(3604,51,99,0),(3607,55,1,0),(3608,55,2,0),(3814,1,1,0),(3815,1,2,0),(3816,1,3,0),(3817,1,4,0),(3818,1,5,0),(3819,1,59,0),(3820,1,61,0),(3821,1,95,0),(3822,1,57,0),(3823,1,58,0),(3824,1,60,0),(3825,1,6,0),(3826,1,7,0),(3827,1,8,0),(3828,1,15,0),(3829,1,16,0),(3830,1,17,0),(3831,1,97,0),(3832,1,103,0),(3833,1,104,0),(3834,1,12,0),(3835,1,13,0),(3836,1,64,0),(3837,1,63,0),(3838,1,65,0),(3839,1,67,0),(3840,1,68,0),(3841,1,9,0),(3842,1,94,0),(3843,1,10,0),(3844,1,83,0),(3845,1,18,0),(3846,1,19,0),(3847,1,85,0),(3848,1,20,0),(3849,1,86,0),(3850,1,87,0),(3851,1,88,0),(3852,1,89,0),(3853,1,90,0),(3854,1,91,0),(3855,1,92,0),(3856,1,93,0),(3857,1,84,0),(3858,1,21,0),(3859,1,70,0),(3860,1,71,0),(3861,1,72,0),(3862,1,73,0),(3863,1,74,0),(3864,1,75,0),(3865,1,76,0),(3866,1,77,0),(3867,1,78,0),(3868,1,79,0),(3869,1,62,0),(3870,1,80,0),(3871,1,96,0),(3872,1,98,0),(3873,1,99,0),(3890,20,1,0),(3891,20,2,0),(3892,20,18,0),(3893,20,19,0),(3894,20,57,0),(3895,20,58,0),(3896,20,62,0),(3897,20,80,0),(3898,20,96,0),(3899,20,84,0),(3900,20,21,0),(3901,20,78,0),(3902,20,79,0),(3903,20,85,0),(3904,20,20,0),(3940,3,6,0),(3941,3,7,0),(3942,3,8,0),(3943,3,102,0),(3944,3,105,0),(3945,3,57,0),(3946,3,58,0),(3947,3,62,0),(3948,3,80,0),(3949,3,96,0),(3950,3,1,0),(3951,3,2,0),(3952,3,6,0),(3953,3,7,0),(3954,3,8,0),(3955,3,102,0),(3956,3,105,0),(3957,3,57,0),(3958,3,58,0),(3959,3,62,0),(3960,3,80,0),(3961,3,96,0),(3973,4,15,0),(3974,4,16,0),(3975,4,17,0),(3976,4,103,0),(3977,4,57,0),(3978,4,58,0),(3979,4,62,0),(3980,4,80,0),(3981,4,96,0),(3989,2,1,0),(3990,2,2,0),(3991,2,7,0),(3992,2,8,0),(3993,2,102,0),(3994,2,105,0),(3995,2,58,0);

/*Table structure for table `hj_student` */

DROP TABLE IF EXISTS `hj_student`;

CREATE TABLE `hj_student` (
  `studentId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '学员表主键id',
  `resourceId` bigint(20) DEFAULT NULL COMMENT '资源id',
  `userid` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `belongid` bigint(20) DEFAULT NULL COMMENT '学员归属人ID',
  `customerId` bigint(20) DEFAULT NULL COMMENT '客服人员ID',
  `customer_time` timestamp NULL DEFAULT NULL COMMENT '分配客服时间',
  `studentName` varchar(20) DEFAULT NULL COMMENT '学员姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '学员手机号',
  `tel` varchar(30) DEFAULT NULL COMMENT '座机',
  `weixin` varchar(50) DEFAULT NULL COMMENT '微信号',
  `qq` varchar(20) DEFAULT NULL COMMENT 'QQ号',
  `address` varchar(50) DEFAULT NULL COMMENT '地区',
  `sex` int(1) DEFAULT NULL COMMENT '性别 0男 1女',
  `source` int(2) DEFAULT NULL COMMENT '渠道: 0自建  1课程注册  2在线注册  3app下载注册   4电话咨询   5金考网注册用户   6线上渠道  7在线咨询  8大库资源 9 在线购买',
  `resourceLevel` varchar(2) DEFAULT NULL COMMENT '资源等级     A B C D',
  `idCard` varchar(30) DEFAULT NULL COMMENT '身份证号码',
  `nation` varchar(10) DEFAULT NULL COMMENT '民族',
  `education` varchar(20) DEFAULT NULL COMMENT '学历',
  `school` varchar(50) DEFAULT NULL COMMENT '毕业院校',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `company` varchar(60) DEFAULT NULL COMMENT '工作单位',
  `department` varchar(50) DEFAULT NULL COMMENT '工作部门',
  `position` varchar(50) DEFAULT NULL COMMENT '职务',
  `companyAddr` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `homeAddr` varchar(100) DEFAULT NULL COMMENT '家庭住址',
  `companyTel` varchar(30) DEFAULT NULL COMMENT '公司电话',
  `isjieye` int(1) DEFAULT '0' COMMENT '是否协助结业 0：否 1：是',
  `LCWname` varchar(80) DEFAULT NULL COMMENT '理财网用户名',
  `LCWpassword` varchar(80) DEFAULT NULL COMMENT '理财网密码',
  `LCWoutTime` timestamp NULL DEFAULT NULL COMMENT '理财网过期时间',
  `banci` varchar(30) DEFAULT NULL COMMENT '班次',
  `classNum` varchar(20) DEFAULT NULL COMMENT '上课班号',
  `qici` varchar(30) DEFAULT NULL COMMENT '期次',
  `isSignAgreement` int(1) DEFAULT '0' COMMENT '是否签订协议 0未签订 1已签订',
  `studentstate` int(2) DEFAULT NULL COMMENT '学员状态 0新增 1已成交 2已提交 3已到账 4已分配 5已转入 6已通过考试 7已关课 8已退回',
  `courseversion` varchar(30) DEFAULT NULL COMMENT '课件版本',
  `mailTime` timestamp NULL DEFAULT NULL COMMENT '邮寄时间',
  `isHaveCourse` int(1) DEFAULT '0' COMMENT '是否上过课 0未上过课 1已上过课',
  `kefuNote1` varchar(200) DEFAULT NULL COMMENT '客服备注1',
  `kefuNote2` varchar(200) DEFAULT NULL COMMENT '客服备注2',
  `baokaopassword` varchar(50) DEFAULT NULL COMMENT '报考密码',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  `returnNote` varchar(200) DEFAULT NULL COMMENT '退回原因',
  `returnTime` timestamp NULL DEFAULT NULL COMMENT '退回时间',
  `returnId` bigint(20) DEFAULT NULL COMMENT '退回人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `commit_time` timestamp NULL DEFAULT NULL COMMENT '提交行政日期',
  `headmaster` varchar(30) DEFAULT NULL COMMENT '班主任',
  `courseid` bigint(20) DEFAULT NULL COMMENT '课程ID',
  `matchinfo_time` timestamp NULL DEFAULT NULL COMMENT '确认到账时间',
  `arrive_money` varchar(100) DEFAULT NULL COMMENT '收款金额',
  `arrive_time` varchar(100) DEFAULT NULL COMMENT '收款时间',
  `preferinfo` varchar(100) DEFAULT NULL COMMENT '优惠信息',
  `ishavenetedu` int(1) DEFAULT '0' COMMENT '是否存在网络培训费 0无 1有',
  `netedumoney` varchar(30) DEFAULT NULL COMMENT '网络培训费金额',
  `remitWay` varchar(50) DEFAULT NULL COMMENT '汇款方式',
  `remituser` varchar(300) DEFAULT NULL COMMENT '代汇款人',
  `invoiceinfo` varchar(200) DEFAULT NULL COMMENT '发票情况',
  `ispass` int(1) DEFAULT '0' COMMENT '是否通过 0未通过 1通过 2缺考',
  `passtime` timestamp NULL DEFAULT NULL COMMENT '通过时间',
  `dealtime` timestamp NULL DEFAULT NULL COMMENT '成交时间',
  `dealprice` varchar(20) DEFAULT NULL COMMENT '成交金额',
  `iscommitcaiwu` int(1) DEFAULT '0' COMMENT '行政是否提交财务 0未提交 1已提交',
  `commitTime_caiwu` timestamp NULL DEFAULT NULL COMMENT '行政提交财务时间',
  `paytime` varchar(30) DEFAULT NULL COMMENT '支付日期',
  `xingzhengNote` varchar(200) DEFAULT NULL COMMENT '行政备注',
  `scoretime` timestamp NULL DEFAULT NULL COMMENT '考试日期',
  `studentEvaluate` varchar(10) DEFAULT NULL COMMENT '学员评价   优 良 中 差',
  `specialinfo` varchar(20) DEFAULT NULL COMMENT '特殊情况',
  `studentColor` varchar(100) DEFAULT NULL COMMENT '学员颜色标记',
  `xiaoShouNote` varchar(200) DEFAULT NULL COMMENT '销售备注',
  `isOnlineBuy` int(1) NOT NULL DEFAULT '0' COMMENT '是否在线购买 0:否 1:是',
  `isolddata` int(1) DEFAULT '0' COMMENT '是否历史数据  0否 1是',
  PRIMARY KEY (`studentId`),
  KEY `index_name` (`resourceId`),
  KEY `index_name1` (`userid`),
  KEY `index_name2` (`belongid`),
  KEY `index_name3` (`customerId`),
  KEY `index_name4` (`phone`),
  KEY `index_name5` (`courseid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学员表';

/*Data for the table `hj_student` */

insert  into `hj_student`(`studentId`,`resourceId`,`userid`,`belongid`,`customerId`,`customer_time`,`studentName`,`phone`,`tel`,`weixin`,`qq`,`address`,`sex`,`source`,`resourceLevel`,`idCard`,`nation`,`education`,`school`,`email`,`company`,`department`,`position`,`companyAddr`,`homeAddr`,`companyTel`,`isjieye`,`LCWname`,`LCWpassword`,`LCWoutTime`,`banci`,`classNum`,`qici`,`isSignAgreement`,`studentstate`,`courseversion`,`mailTime`,`isHaveCourse`,`kefuNote1`,`kefuNote2`,`baokaopassword`,`dr`,`returnNote`,`returnTime`,`returnId`,`create_time`,`update_id`,`update_time`,`commit_time`,`headmaster`,`courseid`,`matchinfo_time`,`arrive_money`,`arrive_time`,`preferinfo`,`ishavenetedu`,`netedumoney`,`remitWay`,`remituser`,`invoiceinfo`,`ispass`,`passtime`,`dealtime`,`dealprice`,`iscommitcaiwu`,`commitTime_caiwu`,`paytime`,`xingzhengNote`,`scoretime`,`studentEvaluate`,`specialinfo`,`studentColor`,`xiaoShouNote`,`isOnlineBuy`,`isolddata`) values (1,21,42,42,NULL,NULL,'asfadfadfadsf333','13567989872',NULL,NULL,NULL,'北京',NULL,1,'B','123123123123123123123',NULL,NULL,NULL,'12312@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,2,NULL,NULL,0,NULL,NULL,NULL,0,'qerwerwer','2018-07-30 16:16:19',71,'2018-07-30 16:13:40',42,'2018-07-30 16:16:35','2018-07-30 16:16:35',NULL,1,NULL,NULL,NULL,'123',0,'123',NULL,'张三',NULL,0,NULL,'2018-07-30 16:13:23','123',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),(2,24,42,42,56,'2018-09-04 10:34:41','ceshi123123','18912371239',NULL,'',NULL,'北京',NULL,1,'B','360822198609284091',NULL,NULL,NULL,'adsf@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'','',NULL,0,5,'',NULL,0,'',NULL,'',0,'123123','2018-09-04 10:31:38',71,'2018-09-04 10:30:38',56,'2018-09-04 10:35:34','2018-09-04 10:31:49','陈六',1,NULL,NULL,NULL,'123',0,'123',NULL,'ceshi123123',NULL,0,NULL,'2018-09-04 10:30:22','123',0,NULL,NULL,NULL,NULL,'优','已关课','rgb(251, 140, 140)',NULL,0,0),(3,25,42,42,NULL,NULL,'zhaaaaaaaaa','18912312323',NULL,NULL,NULL,'北京',NULL,1,'','150624197307108592',NULL,NULL,NULL,'123123@qq.com',NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,0,3,NULL,NULL,0,NULL,NULL,NULL,0,'其乐无穷让34','2018-10-08 14:19:21',71,'2018-10-08 14:17:51',42,'2018-10-08 14:19:37','2018-10-08 14:19:37',NULL,1,NULL,NULL,NULL,'123',0,'123',NULL,'zhaaaaaaaaa',NULL,0,NULL,'2018-10-08 14:17:27','123',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0);

/*Table structure for table `hj_subject` */

DROP TABLE IF EXISTS `hj_subject`;

CREATE TABLE `hj_subject` (
  `subjectid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '科目主键ID',
  `courseid` bigint(20) DEFAULT NULL COMMENT '所属课程ID',
  `subjectname` varchar(100) DEFAULT NULL COMMENT '科目名称',
  `subjectcode` varchar(50) DEFAULT NULL COMMENT '科目编码',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='科目表';

/*Data for the table `hj_subject` */

insert  into `hj_subject`(`subjectid`,`courseid`,`subjectname`,`subjectcode`,`create_id`,`create_time`,`update_id`,`update_time`,`note`,`dr`) values (1,1,'科目1','kemu1',1,'2016-11-23 15:52:58',NULL,NULL,'note1',0),(2,2,'科目2','',1,'2016-11-23 15:53:12',NULL,NULL,'',0),(3,3,'科目3','',1,'2016-11-23 15:53:27',NULL,NULL,'',0),(4,3,'科目4','',1,'2016-11-23 15:53:51',NULL,NULL,'',0),(5,3,'科目5','',1,'2016-11-23 15:54:08',NULL,NULL,'',0),(6,3,'科目6','',1,'2016-11-23 15:54:18',NULL,NULL,'',0),(7,3,'科目7','',1,'2016-11-23 15:54:28',NULL,NULL,'',0),(8,4,'科目8','',1,'2016-11-23 15:54:59',NULL,NULL,'',0),(9,4,'科目9','',1,'2016-11-23 15:55:16',1,'2016-11-23 15:56:13','',0),(10,4,'科目10','',1,'2016-11-23 15:55:52',1,'2016-11-23 15:56:18','',0),(11,4,'科目11','',1,'2016-11-23 15:56:06',NULL,NULL,'',0),(12,4,'科目12','',1,'2016-11-23 15:56:38',NULL,NULL,'',0),(13,5,'科目13','',1,'2016-11-23 15:57:02',NULL,NULL,'',0),(14,5,'科目14','',1,'2016-11-23 15:57:10',NULL,NULL,'',0),(15,5,'科目15','',1,'2016-11-23 15:57:20',NULL,NULL,'',0),(16,5,'科目16','',1,'2016-11-23 15:57:33',NULL,NULL,'',0),(17,5,'科目17','',1,'2016-11-23 15:57:41',NULL,NULL,'',0),(18,6,'科目18','',1,'2016-11-23 15:58:18',1,'2016-11-25 15:15:15','',0),(19,6,'科目19','',1,'2016-11-23 15:58:33',NULL,NULL,'',0),(20,7,'科目20','',1,'2016-11-23 15:59:09',1,'2016-11-25 15:15:06','',0),(21,7,'科目21','',1,'2016-11-23 15:59:23',NULL,NULL,'',0),(22,8,'科目22','',1,'2016-11-23 15:59:47',1,'2016-11-25 15:14:55','',0),(23,8,'科目23','',1,'2016-11-23 15:59:58',NULL,NULL,'',0),(24,9,'科目24','',1,'2016-11-23 16:00:12',1,'2016-11-25 15:14:46','',0),(25,9,'科目25','',1,'2016-11-23 16:00:22',NULL,NULL,'',0),(26,10,'科目26','',1,'2016-11-23 16:00:37',NULL,NULL,'',0),(27,10,'科目27','',1,'2016-11-23 16:00:58',NULL,NULL,'',0),(28,10,'科目28','',1,'2016-11-23 16:01:24',NULL,NULL,'',0),(29,10,'科目29','',1,'2016-11-23 16:01:35',NULL,NULL,'',0),(30,11,'科目30','',1,'2016-11-23 16:01:49',NULL,NULL,'',0),(31,11,'科目31','',1,'2016-11-23 16:02:06',NULL,NULL,'',0),(32,12,'科目32','',1,'2016-11-23 16:02:25',NULL,NULL,'',0),(33,12,'科目33','',1,'2016-11-23 16:02:40',NULL,NULL,'',0),(34,13,'科目34','',1,'2016-11-23 16:02:54',NULL,NULL,'',0),(35,13,'科目35','',1,'2016-11-23 16:03:05',NULL,NULL,'',0),(36,14,'科目36','',1,'2016-11-23 16:03:20',NULL,NULL,'',0),(37,14,'科目37','',1,'2016-11-23 16:03:33',NULL,NULL,'',0),(38,15,'科目38','',1,'2016-11-23 16:03:46',NULL,NULL,'',0),(39,16,'科目39','',1,'2016-11-23 16:03:57',NULL,NULL,'',0),(40,17,'科目40','',1,'2016-11-24 00:03:29',NULL,NULL,'',0),(41,18,'科目41','',1,'2016-11-24 00:03:34',NULL,NULL,'',0),(43,8,'科目42','',1,'2017-02-07 16:28:57',NULL,NULL,'',0),(44,20,'科目43','',1,'2017-03-15 10:19:30',NULL,NULL,'',0),(45,20,'科目44','',1,'2017-03-15 10:19:40',NULL,NULL,'',0);

/*Table structure for table `hj_systemmessage` */

DROP TABLE IF EXISTS `hj_systemmessage`;

CREATE TABLE `hj_systemmessage` (
  `systemmessageId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '系统消息主键',
  `messagetitle` varchar(100) DEFAULT NULL COMMENT '消息标题',
  `messageContent` text COMMENT '消息内容',
  `issend` int(1) DEFAULT '0' COMMENT '是否发布 0未发布 1已发布',
  `send_time` timestamp NULL DEFAULT NULL COMMENT '消息发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`systemmessageId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统消息表';

/*Data for the table `hj_systemmessage` */

insert  into `hj_systemmessage`(`systemmessageId`,`messagetitle`,`messageContent`,`issend`,`send_time`,`create_time`,`create_id`) values (1,'21323','2222222222',0,'2017-06-14 15:59:54','2017-06-14 15:59:19',NULL),(2,'这是一个标题','这是消息内容啊',0,NULL,'2017-11-10 14:33:23',1),(3,'33','33444',0,'2018-05-24 09:16:56','2017-12-17 20:46:32',1);

/*Table structure for table `hj_todaynote` */

DROP TABLE IF EXISTS `hj_todaynote`;

CREATE TABLE `hj_todaynote` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户ID',
  `note` text COMMENT '今日目标',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='今日目标表';

/*Data for the table `hj_todaynote` */

/*Table structure for table `hj_transferrecord` */

DROP TABLE IF EXISTS `hj_transferrecord`;

CREATE TABLE `hj_transferrecord` (
  `transferrecordId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '转移记录ID',
  `resourceId` bigint(20) DEFAULT NULL COMMENT '资源ID',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `tel` varchar(20) DEFAULT NULL COMMENT '座机',
  `sourceId` bigint(20) DEFAULT NULL COMMENT '数据来源人ID',
  `sourceName` varchar(50) DEFAULT NULL COMMENT '数据来源人',
  `belongId` bigint(20) DEFAULT NULL COMMENT '归属者ID',
  `belongName` varchar(50) DEFAULT NULL COMMENT '归属者',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '转移时间',
  `state` int(1) DEFAULT NULL COMMENT '资源状态  0未分配 1已分配(未处理) 2已处理',
  `deptid` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `source` int(3) DEFAULT NULL COMMENT '渠道: 0自建  1课程注册  2在线注册  3app下载注册   4电话咨询   5金考网注册用户   6线上渠道  7在线咨询  8大库资源 9 在线购买',
  `operationId` bigint(20) DEFAULT NULL COMMENT '操作人ID',
  `operationName` varchar(50) DEFAULT NULL COMMENT '操作人姓名',
  `resourceLevelBefore` varchar(2) DEFAULT NULL COMMENT '转移前资源等级     A B C D',
  PRIMARY KEY (`transferrecordId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='转移记录表';

/*Data for the table `hj_transferrecord` */

insert  into `hj_transferrecord`(`transferrecordId`,`resourceId`,`phone`,`tel`,`sourceId`,`sourceName`,`belongId`,`belongName`,`create_time`,`state`,`deptid`,`source`,`operationId`,`operationName`,`resourceLevelBefore`) values (1,3,'18978987898','',26,NULL,42,NULL,'2017-09-19 20:19:41',1,2,1,2,'张三',NULL),(2,3,'18978987898','',42,NULL,42,NULL,'2017-09-19 20:21:00',1,2,1,2,'张三',NULL),(3,3,'18978987898','',42,NULL,42,NULL,'2017-09-19 20:23:27',1,2,1,2,'张三',NULL),(4,3,'18978987898','',42,NULL,42,NULL,'2017-09-19 20:23:46',1,2,1,2,'张三',NULL),(5,3,'18978987898','',42,NULL,42,NULL,'2017-09-19 20:24:15',1,2,1,2,'张三',NULL),(6,3,'18978987898','',42,NULL,42,NULL,'2017-09-20 15:49:35',1,2,1,2,'张三',NULL),(7,3,'18978987898','',42,NULL,26,NULL,'2017-09-20 15:50:11',1,2,1,2,'张三',NULL),(8,3,'18978987898','',26,NULL,26,NULL,'2017-09-20 15:50:30',1,2,1,2,'张三',NULL),(9,7,'13513412323','',26,NULL,26,NULL,'2017-11-13 21:07:08',1,13,2,2,'张三','A'),(10,6,'18922222222','',26,NULL,26,NULL,'2017-11-13 21:09:09',1,2,2,2,'张三',NULL),(11,8,'1898765678','',26,NULL,26,NULL,'2017-11-13 21:09:57',1,13,2,2,'张三','A'),(12,8,'1898765678','',26,NULL,26,NULL,'2017-11-13 21:10:13',1,13,2,2,'张三',NULL),(13,8,'1898765678','',26,NULL,26,NULL,'2017-11-14 11:02:55',1,13,2,2,'张三',NULL),(14,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 14:52:10',1,2,1,2,'张三',NULL),(15,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 14:52:41',1,2,1,2,'张三',NULL),(16,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 14:54:21',1,2,1,2,'张三',NULL),(17,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 14:54:40',1,2,1,2,'张三',NULL),(18,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 14:56:15',1,2,1,2,'张三',NULL),(19,21,'13567989872','',42,NULL,42,NULL,'2018-05-30 15:31:20',1,2,1,2,'张三',NULL),(20,23,'18912331233','123',26,NULL,42,NULL,'2018-07-30 16:10:24',1,2,1,2,'张三',NULL);

/*Table structure for table `hj_user` */

DROP TABLE IF EXISTS `hj_user`;

CREATE TABLE `hj_user` (
  `userid` bigint(30) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户真实姓名',
  `nickname` varchar(100) DEFAULT NULL COMMENT '用户昵称',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `userphoto` varchar(200) DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `mobile` varchar(20) DEFAULT NULL COMMENT '座机号码',
  `deptid` bigint(30) DEFAULT NULL COMMENT '部门ID',
  `roleid` bigint(30) DEFAULT NULL COMMENT '角色ID',
  `state` int(1) DEFAULT '0' COMMENT '状态 0 可用  1不可用',
  `sex` int(1) DEFAULT '0' COMMENT '性别  0男  1女',
  `wxopenid` varchar(30) DEFAULT NULL COMMENT '关联微信ID',
  `qqopenid` varchar(30) DEFAULT NULL COMMENT '关联QQID',
  `dr` int(1) NOT NULL DEFAULT '0' COMMENT '删除标志 0未删除 1已删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '更新人',
  `note` varchar(200) DEFAULT NULL COMMENT '备注',
  `ischange` int(1) DEFAULT '0' COMMENT '是否修改密码 0无1修改',
  `deptgroup` int(1) DEFAULT '0' COMMENT '部门大类：0市场部 、1基金销售、 2机构客户部、 3重庆代理1、4重庆代理2 、5西安代理 、6南京代理1、 7南京代理2、8苏州代理、9泰州代理、10长春代理 、11太原代理',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='crm系统用户表';

/*Data for the table `hj_user` */

insert  into `hj_user`(`userid`,`username`,`nickname`,`password`,`email`,`userphoto`,`phone`,`mobile`,`deptid`,`roleid`,`state`,`sex`,`wxopenid`,`qqopenid`,`dr`,`create_time`,`create_id`,`update_time`,`update_id`,`note`,`ischange`,`deptgroup`) values (1,'admin','admin','4297f44b13955235245b2497399d7a93','123@qq.com',NULL,'18310141088',NULL,1,1,0,0,NULL,NULL,0,'2017-11-08 11:34:42',1,'2017-07-12 16:17:39',1,NULL,1,0),(2,'张三',NULL,'4297f44b13955235245b2497399d7a93','1@qq.com','','15210260146','',2,2,0,0,NULL,NULL,0,'2018-09-04 10:28:42',1,'2016-12-12 10:19:43',2,'',1,0),(26,'李四',NULL,'4297f44b13955235245b2497399d7a93','9@qq.com','','18611341996','',13,12,0,0,NULL,NULL,0,'2017-05-18 16:13:58',1,'2017-01-12 15:03:55',26,'',1,0),(42,'王五',NULL,'4297f44b13955235245b2497399d7a93','2@qq.com','','15045523007','',15,17,0,0,NULL,NULL,0,'2017-05-18 16:14:00',1,'2016-12-09 15:21:56',42,'',1,0),(56,'陈六',NULL,'4297f44b13955235245b2497399d7a93','8@qq.com','','12344425285','',18,23,0,1,NULL,NULL,0,'2017-05-18 16:14:09',1,'2016-12-13 16:33:16',1,'',1,0),(58,'刘七',NULL,'4297f44b13955235245b2497399d7a93','7@qq.com','','13821372879','',19,24,0,0,NULL,NULL,0,'2017-05-18 16:14:05',1,'2017-01-05 18:00:01',58,'',1,0),(66,'周八皮',NULL,'4297f44b13955235245b2497399d7a93','6@qq.com','','13931117971','',20,26,0,0,NULL,NULL,0,'2017-06-15 12:14:02',1,'2016-12-09 15:21:38',66,'',1,0),(71,'孟九',NULL,'4297f44b13955235245b2497399d7a93','3@qq.com','','13444446283','',4,31,0,0,NULL,NULL,0,'2018-07-30 11:44:42',1,'2016-12-09 15:23:14',71,'',1,0),(73,'上官阳',NULL,'4297f44b13955235245b2497399d7a93','4@qq.com','','14444440613','',3,34,0,0,NULL,NULL,0,'2017-05-18 16:14:18',1,'2016-12-12 09:53:38',73,'',1,0);

/*Table structure for table `hj_userlogs` */

DROP TABLE IF EXISTS `hj_userlogs`;

CREATE TABLE `hj_userlogs` (
  `userLogsId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '操作日志主键',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `logsinter` varchar(100) DEFAULT NULL COMMENT '用户操作日志接口地址',
  `logsparam` varchar(500) DEFAULT NULL COMMENT '操作参数',
  `logstime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '操作时间',
  `logsuserip` varchar(50) DEFAULT NULL COMMENT '操作IP',
  `ipcountry` varchar(50) DEFAULT NULL COMMENT '操作IP国家',
  `iparea` varchar(50) DEFAULT NULL COMMENT 'IP地区',
  `ipregion` varchar(50) DEFAULT NULL COMMENT 'IP省份',
  `ipcity` varchar(50) DEFAULT NULL COMMENT 'IP城市',
  `ipcounty` varchar(50) DEFAULT NULL COMMENT 'IP区/县',
  `ipisp` varchar(50) DEFAULT NULL COMMENT '互联网服务提供商',
  `logsnote` varchar(100) DEFAULT NULL COMMENT '备注',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志  0 未删除 1 已删除',
  PRIMARY KEY (`userLogsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户操作监控日志表';

/*Data for the table `hj_userlogs` */

/*Table structure for table `hj_visitrecord` */

DROP TABLE IF EXISTS `hj_visitrecord`;

CREATE TABLE `hj_visitrecord` (
  `visitRecordid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回访表主键ID',
  `userid` bigint(20) DEFAULT NULL COMMENT '销售或者客服id',
  `resourceId` bigint(20) DEFAULT NULL COMMENT '资源id',
  `studentId` bigint(20) DEFAULT NULL COMMENT '学员ID',
  `visitRecord` text COMMENT '回访记录内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `update_id` bigint(20) DEFAULT NULL COMMENT '修改人id',
  `dr` int(1) DEFAULT '0' COMMENT '删除标志 0未删除  1已删除',
  `courseid` bigint(20) DEFAULT NULL COMMENT '课程ID',
  `subjectid` bigint(20) DEFAULT NULL COMMENT '科目ID',
  PRIMARY KEY (`visitRecordid`),
  KEY `index_name` (`resourceId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='回访记录表';

/*Data for the table `hj_visitrecord` */

insert  into `hj_visitrecord`(`visitRecordid`,`userid`,`resourceId`,`studentId`,`visitRecord`,`create_time`,`update_time`,`update_id`,`dr`,`courseid`,`subjectid`) values (1,26,6,NULL,'222222','2017-11-14 14:48:14',NULL,NULL,0,NULL,NULL),(2,26,6,NULL,'eeeee','2017-11-14 14:49:01',NULL,NULL,0,NULL,NULL),(3,26,7,NULL,'123123','2017-11-14 16:56:26',NULL,NULL,0,NULL,NULL),(4,42,23,NULL,'567','2018-07-30 16:12:25',NULL,NULL,0,3,NULL),(5,42,21,NULL,'rtyrty','2018-07-30 16:12:33',NULL,NULL,0,1,NULL),(6,42,21,NULL,'rtyrty','2018-07-30 16:12:36',NULL,NULL,0,1,NULL),(7,42,16,NULL,'qweqwe','2018-07-30 16:21:04',NULL,NULL,0,11,NULL),(8,42,24,NULL,'asdfasdf','2018-09-04 10:30:20',NULL,NULL,0,1,NULL),(9,42,24,NULL,'asdfadsf','2018-09-04 10:30:21',NULL,NULL,0,1,NULL),(10,42,25,NULL,'123123','2018-10-08 14:15:50',NULL,NULL,0,1,NULL),(11,42,25,NULL,'123123123123','2018-10-08 14:15:53',NULL,NULL,0,1,NULL),(12,42,22,NULL,'qweqwe','2018-10-08 14:16:08',NULL,NULL,0,1,NULL),(13,42,22,NULL,'qweqwe','2018-10-08 14:16:13',NULL,NULL,0,1,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
