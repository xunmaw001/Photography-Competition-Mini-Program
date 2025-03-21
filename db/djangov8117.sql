-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangov8117
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `djangov8117`
--

/*!40000 DROP DATABASE IF EXISTS `djangov8117`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `djangov8117` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `djangov8117`;

--
-- Table structure for table `baomingshenqing`
--

DROP TABLE IF EXISTS `baomingshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baomingshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264858980 DEFAULT CHARSET=utf8 COMMENT='报名申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baomingshenqing`
--

LOCK TABLES `baomingshenqing` WRITE;
/*!40000 ALTER TABLE `baomingshenqing` DISABLE KEYS */;
INSERT INTO `baomingshenqing` VALUES (51,'2022-01-04 02:46:34','项目名称1','项目类型1','upload/baomingshenqing_fengmian1.jpg','工号1','姓名1','学号1','学生姓名1','备注1','2022-01-04','是','',1),(52,'2022-01-04 02:46:34','项目名称2','项目类型2','upload/baomingshenqing_fengmian2.jpg','工号2','姓名2','学号2','学生姓名2','备注2','2022-01-04','是','',2),(53,'2022-01-04 02:46:34','项目名称3','项目类型3','upload/baomingshenqing_fengmian3.jpg','工号3','姓名3','学号3','学生姓名3','备注3','2022-01-04','是','',3),(54,'2022-01-04 02:46:34','项目名称4','项目类型4','upload/baomingshenqing_fengmian4.jpg','工号4','姓名4','学号4','学生姓名4','备注4','2022-01-04','是','',4),(55,'2022-01-04 02:46:34','项目名称5','项目类型5','upload/baomingshenqing_fengmian5.jpg','工号5','姓名5','学号5','学生姓名5','备注5','2022-01-04','是','',5),(56,'2022-01-04 02:46:34','项目名称6','项目类型6','upload/baomingshenqing_fengmian6.jpg','工号6','姓名6','学号6','学生姓名6','备注6','2022-01-04','是','',6),(1641264858979,'2022-01-04 02:54:18','日常项目','生活类','upload/1641264727034.jpg','33','王五','22','李四','这里是学生申请项目的申请','2022-01-04','是','辅导员审核学生的申请后，学生再进行作品的发布',1641264655014);
/*!40000 ALTER TABLE `baomingshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1641265209069.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fudaoyuan`
--

DROP TABLE IF EXISTS `fudaoyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fudaoyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264671811 DEFAULT CHARSET=utf8 COMMENT='辅导员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fudaoyuan`
--

LOCK TABLES `fudaoyuan` WRITE;
/*!40000 ALTER TABLE `fudaoyuan` DISABLE KEYS */;
INSERT INTO `fudaoyuan` VALUES (31,'2022-01-04 02:46:34','工号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/fudaoyuan_xiangpian1.jpg'),(32,'2022-01-04 02:46:34','工号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/fudaoyuan_xiangpian2.jpg'),(33,'2022-01-04 02:46:34','工号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/fudaoyuan_xiangpian3.jpg'),(34,'2022-01-04 02:46:34','工号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/fudaoyuan_xiangpian4.jpg'),(35,'2022-01-04 02:46:34','工号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/fudaoyuan_xiangpian5.jpg'),(36,'2022-01-04 02:46:34','工号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/fudaoyuan_xiangpian6.jpg'),(1641264671810,'2022-01-04 02:51:11','33','33','王五','男','133@163.com','13333333333','upload/1641264694712.jpg');
/*!40000 ALTER TABLE `fudaoyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerenzuopin`
--

DROP TABLE IF EXISTS `gerenzuopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gerenzuopin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zuopinmingcheng` varchar(200) DEFAULT NULL COMMENT '作品名称',
  `zuopintupian` varchar(200) DEFAULT NULL COMMENT '作品图片',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `tijiaoriqi` date DEFAULT NULL COMMENT '提交日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264986949 DEFAULT CHARSET=utf8 COMMENT='个人作品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerenzuopin`
--

LOCK TABLES `gerenzuopin` WRITE;
/*!40000 ALTER TABLE `gerenzuopin` DISABLE KEYS */;
INSERT INTO `gerenzuopin` VALUES (61,'2022-01-04 02:46:34','项目名称1','项目类型1','学号1','学生姓名1','作品名称1','upload/gerenzuopin_zuopintupian1.jpg','作品简介1','2022-01-04',1),(62,'2022-01-04 02:46:34','项目名称2','项目类型2','学号2','学生姓名2','作品名称2','upload/gerenzuopin_zuopintupian2.jpg','作品简介2','2022-01-04',2),(63,'2022-01-04 02:46:34','项目名称3','项目类型3','学号3','学生姓名3','作品名称3','upload/gerenzuopin_zuopintupian3.jpg','作品简介3','2022-01-04',3),(64,'2022-01-04 02:46:34','项目名称4','项目类型4','学号4','学生姓名4','作品名称4','upload/gerenzuopin_zuopintupian4.jpg','作品简介4','2022-01-04',4),(65,'2022-01-04 02:46:34','项目名称5','项目类型5','学号5','学生姓名5','作品名称5','upload/gerenzuopin_zuopintupian5.jpg','作品简介5','2022-01-04',5),(66,'2022-01-04 02:46:34','项目名称6','项目类型6','学号6','学生姓名6','作品名称6','upload/gerenzuopin_zuopintupian6.jpg','作品简介6','2022-01-04',6),(1641264986948,'2022-01-04 02:56:26','日常项目','生活类','22','李四','李四的作品','upload/1641264964208.jpg','这里输入作品的简介，然后交给教师去进行评论','2022-01-04',1641264655014);
/*!40000 ALTER TABLE `gerenzuopin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264636270 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2022-01-04 02:46:34','教师工号1','123456','教师姓名1','男','773890001@qq.com','13823888881','upload/jiaoshi_xiangpian1.jpg'),(12,'2022-01-04 02:46:34','教师工号2','123456','教师姓名2','男','773890002@qq.com','13823888882','upload/jiaoshi_xiangpian2.jpg'),(13,'2022-01-04 02:46:34','教师工号3','123456','教师姓名3','男','773890003@qq.com','13823888883','upload/jiaoshi_xiangpian3.jpg'),(14,'2022-01-04 02:46:34','教师工号4','123456','教师姓名4','男','773890004@qq.com','13823888884','upload/jiaoshi_xiangpian4.jpg'),(15,'2022-01-04 02:46:34','教师工号5','123456','教师姓名5','男','773890005@qq.com','13823888885','upload/jiaoshi_xiangpian5.jpg'),(16,'2022-01-04 02:46:34','教师工号6','123456','教师姓名6','男','773890006@qq.com','13823888886','upload/jiaoshi_xiangpian6.jpg'),(1641264636269,'2022-01-04 02:50:36','11','11','张三','男','131@163.com','13111111111','upload/1641265043565.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1641265087799 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (91,'2022-01-04 02:46:34',1,'用户名1','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(92,'2022-01-04 02:46:34',2,'用户名2','留言内容2','upload/messages_cpicture2.jpg','轮播图就是小程序端的背景轮播图','upload/messages_rpicture2.jpg'),(93,'2022-01-04 02:46:34',3,'用户名3','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(94,'2022-01-04 02:46:34',4,'用户名4','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(95,'2022-01-04 02:46:34',5,'用户名5','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(96,'2022-01-04 02:46:34',6,'用户名6','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(1641264792462,'2022-01-04 02:53:12',1641264671810,'33','这里添加留言','','这里是回复留言',NULL),(1641265003634,'2022-01-04 02:56:43',1641264655014,'22','学生发布留言','','',NULL),(1641265087798,'2022-01-04 02:58:07',1641264636269,'11','教师的留言','','',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264775985 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2022-01-04 02:46:34','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(83,'2022-01-04 02:46:34','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(84,'2022-01-04 02:46:34','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(85,'2022-01-04 02:46:34','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(86,'2022-01-04 02:46:34','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1641264775984,'2022-01-04 02:52:55','日常公告','公告简介','upload/1641264767766.png','公告内容');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-01-04 02:46:34');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmuxinxi`
--

DROP TABLE IF EXISTS `xiangmuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinxibianhao` varchar(200) NOT NULL COMMENT '信息编号',
  `xiangmumingcheng` varchar(200) NOT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xiangmujianjie` longtext COMMENT '项目简介',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiangmuneirong` longtext COMMENT '项目内容',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xinxibianhao` (`xinxibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264752885 DEFAULT CHARSET=utf8 COMMENT='项目信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmuxinxi`
--

LOCK TABLES `xiangmuxinxi` WRITE;
/*!40000 ALTER TABLE `xiangmuxinxi` DISABLE KEYS */;
INSERT INTO `xiangmuxinxi` VALUES (42,'2022-01-04 02:46:34','2222222222','项目名称2','风景类','项目简介2','upload/xiangmuxinxi_fengmian2.jpg','项目内容2','工号2','姓名2','2022-01-04',2),(43,'2022-01-04 02:46:34','3333333333','项目名称3','风景类','项目简介3','upload/xiangmuxinxi_fengmian3.jpg','项目内容3','工号3','姓名3','2022-01-04',3),(44,'2022-01-04 02:46:34','4444444444','项目名称4','风景类','项目简介4','upload/xiangmuxinxi_fengmian4.jpg','项目内容4','工号4','姓名4','2022-01-04',4),(45,'2022-01-04 02:46:34','5555555555','项目名称5','风景类','项目简介5','upload/xiangmuxinxi_fengmian5.jpg','项目内容5','工号5','姓名5','2022-01-04',5),(46,'2022-01-04 02:46:34','6666666666','项目名称6','风景类','项目简介6','upload/xiangmuxinxi_fengmian6.jpg','项目内容6','工号6','姓名6','2022-01-04',6),(1641264752884,'2022-01-04 02:52:32','1641264785154','日常项目','生活类','辅导员负责发布项目给学生进行申请','upload/1641264727034.jpg','这里输入项目的内容','33','王五','2022-01-04',1641264671810);
/*!40000 ALTER TABLE `xiangmuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1641264655015 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2022-01-04 02:46:34','学号1','123456','学生姓名1','男','773890001@qq.com','13823888881','upload/xuesheng_xiangpian1.jpg'),(22,'2022-01-04 02:46:34','学号2','123456','学生姓名2','男','773890002@qq.com','13823888882','upload/xuesheng_xiangpian2.jpg'),(23,'2022-01-04 02:46:34','学号3','123456','学生姓名3','男','773890003@qq.com','13823888883','upload/xuesheng_xiangpian3.jpg'),(24,'2022-01-04 02:46:34','学号4','123456','学生姓名4','男','773890004@qq.com','13823888884','upload/xuesheng_xiangpian4.jpg'),(25,'2022-01-04 02:46:34','学号5','123456','学生姓名5','男','773890005@qq.com','13823888885','upload/xuesheng_xiangpian5.jpg'),(26,'2022-01-04 02:46:34','学号6','123456','学生姓名6','男','773890006@qq.com','13823888886','upload/xuesheng_xiangpian6.jpg'),(1641264655014,'2022-01-04 02:50:55','22','22','李四','女','132@163.com','13222222222','upload/1641264835602.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zuopinxinxi`
--

DROP TABLE IF EXISTS `zuopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zuopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `xiangmuleixing` varchar(200) DEFAULT NULL COMMENT '项目类型',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `zuopinmingcheng` varchar(200) DEFAULT NULL COMMENT '作品名称',
  `zuopintupian` varchar(200) DEFAULT NULL COMMENT '作品图片',
  `zuopinjianjie` longtext COMMENT '作品简介',
  `tijiaoriqi` varchar(200) DEFAULT NULL COMMENT '提交日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `pingyu` longtext COMMENT '评语',
  `pinglunriqi` date DEFAULT NULL COMMENT '评论日期',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1641265072145 DEFAULT CHARSET=utf8 COMMENT='作品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zuopinxinxi`
--

LOCK TABLES `zuopinxinxi` WRITE;
/*!40000 ALTER TABLE `zuopinxinxi` DISABLE KEYS */;
INSERT INTO `zuopinxinxi` VALUES (71,'2022-01-04 02:46:34','项目名称1','项目类型1','学号1','学生姓名1','作品名称1','upload/zuopinxinxi_zuopintupian1.jpg','作品简介1','提交日期1','教师工号1','教师姓名1','评语1','2022-01-04',1),(72,'2022-01-04 02:46:34','项目名称2','项目类型2','学号2','学生姓名2','作品名称2','upload/zuopinxinxi_zuopintupian2.jpg','作品简介2','提交日期2','教师工号2','教师姓名2','评语2','2022-01-04',2),(73,'2022-01-04 02:46:34','项目名称3','项目类型3','学号3','学生姓名3','作品名称3','upload/zuopinxinxi_zuopintupian3.jpg','作品简介3','提交日期3','教师工号3','教师姓名3','评语3','2022-01-04',3),(74,'2022-01-04 02:46:34','项目名称4','项目类型4','学号4','学生姓名4','作品名称4','upload/zuopinxinxi_zuopintupian4.jpg','作品简介4','提交日期4','教师工号4','教师姓名4','评语4','2022-01-04',4),(75,'2022-01-04 02:46:34','项目名称5','项目类型5','学号5','学生姓名5','作品名称5','upload/zuopinxinxi_zuopintupian5.jpg','作品简介5','提交日期5','教师工号5','教师姓名5','评语5','2022-01-04',5),(76,'2022-01-04 02:46:34','项目名称6','项目类型6','学号6','学生姓名6','作品名称6','upload/zuopinxinxi_zuopintupian6.jpg','作品简介6','提交日期6','教师工号6','教师姓名6','评语6','2022-01-04',6),(1641265072144,'2022-01-04 02:57:52','日常项目','生活类','22','李四','李四的作品','upload/1641264964208.jpg','这里输入作品的简介，然后交给教师去进行评论','2022-01-04','11','张三','这里输入教师的评语','2022-01-04',1641264636269);
/*!40000 ALTER TABLE `zuopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-15 19:38:27
