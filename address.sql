/*
 Navicat Premium Data Transfer

 Source Server         : cwx
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : address

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 02/12/2020 17:09:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(254) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `object_repr` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `model` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-12-05 13:36:27.444062');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-12-05 13:36:28.142013');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-12-05 13:36:28.302981');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-12-05 13:36:28.331569');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-12-05 13:36:28.345852');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-12-05 13:36:28.459899');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-12-05 13:36:28.478786');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-12-05 13:36:28.497118');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-12-05 13:36:28.507624');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-12-05 13:36:28.537576');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-12-05 13:36:28.541385');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-12-05 13:36:28.550413');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-12-05 13:36:28.565698');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-12-05 13:36:28.579712');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2020-12-05 13:36:28.637227');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `session_data` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('fsznooh9vhdk3bhs17grj0c7b46ij9ol', 'Nzk2MzRhYjg1NmVkNWU0YWYwYzRlZjllMjQxZmVhMjVhNGJmZTg5NDp7ImlzX2xvZ2luIjp0cnVlLCJXZWNoYXRJRCI6IkNXWDUiLCJQYXNzd29yZCI6IkNXWDEyMzQ1NiIsImkiOjAsImZyaWVuZElEIjoiQ1dYNSIsIm9mZklEIjoiMyJ9', '2020-12-16 09:02:46.926816');
INSERT INTO `django_session` VALUES ('noffgrmuahhpmcdlbcffv9f7ojsaoeu4', 'NGRkNzc2ZTA2NjMyNmYyMmE2OWE5NTVmYzhlODU1MmY5YjIxNWExZDp7ImlzX2xvZ2luIjp0cnVlLCJXZWNoYXRJRCI6InNodWp1a3UiLCJQYXNzd29yZCI6IlFhWjg3MiIsImkiOjAsImZyaWVuZElEIjoiVEhUNCAiLCJvZmZJRCI6IjgifQ==', '2021-01-08 07:21:23.000000');
INSERT INTO `django_session` VALUES ('swavw4shtwhaekp32wc6cgehaeeh1wk0', 'ZDI1ZmIyZjYwYzJiMTI1OTRmMTg4NWZkNjI0YjVhMGNmODA3YjUxZDp7ImlzX2xvZ2luIjp0cnVlLCJXZWNoYXRJRCI6IlRIVDEyMzQ1NiIsIlBhc3N3b3JkIjoiVGhUMTIzNDU2IiwiZnJpZW5kSUQiOiJUSFQxMjM0NTYiLCJpIjowLCJvZmZJRCI6IiJ9', '2021-01-05 04:42:47.000000');
INSERT INTO `django_session` VALUES ('z3kqxfibpmlb7vy2th13p625g4zuiu7x', 'Y2M3YmViYTg1YzU4YzljYzZhZWYzYWUyODEzYTk5YmE3Nzg2YjJkYzp7ImlzX2xvZ2luIjp0cnVlLCJXZWNoYXRJRCI6IlNIVUpVS1VDRVNISTEiLCJQYXNzd29yZCI6IjEyMzQ1NiIsImZyaWVuZElEIjoid3V5YW5neWFuZyJ9', '2020-12-31 10:27:35.560071');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `INFO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES (1, '测试1', '测试群聊1');
INSERT INTO `group` VALUES (2, '测试2', '测试群聊2');
INSERT INTO `group` VALUES (3, '测试3', '测试群聊3');
INSERT INTO `group` VALUES (16, '测试4', '测试群聊4');
INSERT INTO `group` VALUES (17, '测试５', '测试群聊５');
INSERT INTO `group` VALUES (18, '测试6', '测试群聊6');
INSERT INTO `group` VALUES (19, '测试7', '测试群聊7');
INSERT INTO `group` VALUES (20, '数据库群聊', '我是数据库测试');
INSERT INTO `group` VALUES (21, '数据库群聊1', '我是数据库群聊1');
INSERT INTO `group` VALUES (22, '数据库啦啦啦', '设置为图');

-- ----------------------------
-- Table structure for group_relation
-- ----------------------------
DROP TABLE IF EXISTS `group_relation`;
CREATE TABLE `group_relation`  (
  `User_ID` int NOT NULL,
  `Group_ID` int NOT NULL,
  PRIMARY KEY (`User_ID`, `Group_ID`) USING BTREE,
  INDEX `Group_Relation_group_ID_fk`(`Group_ID`) USING BTREE,
  CONSTRAINT `Group_Relation_group_ID_fk` FOREIGN KEY (`Group_ID`) REFERENCES `group` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Group_Relation_ID_WECHATID_ID_fk` FOREIGN KEY (`User_ID`) REFERENCES `id_wechatid` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of group_relation
-- ----------------------------
INSERT INTO `group_relation` VALUES (33, 1);
INSERT INTO `group_relation` VALUES (38, 1);
INSERT INTO `group_relation` VALUES (59, 1);
INSERT INTO `group_relation` VALUES (33, 2);
INSERT INTO `group_relation` VALUES (59, 2);
INSERT INTO `group_relation` VALUES (60, 2);
INSERT INTO `group_relation` VALUES (60, 3);
INSERT INTO `group_relation` VALUES (36, 17);
INSERT INTO `group_relation` VALUES (37, 17);
INSERT INTO `group_relation` VALUES (33, 18);
INSERT INTO `group_relation` VALUES (36, 18);
INSERT INTO `group_relation` VALUES (37, 18);
INSERT INTO `group_relation` VALUES (39, 18);
INSERT INTO `group_relation` VALUES (59, 18);
INSERT INTO `group_relation` VALUES (60, 18);
INSERT INTO `group_relation` VALUES (34, 19);
INSERT INTO `group_relation` VALUES (40, 19);
INSERT INTO `group_relation` VALUES (48, 19);
INSERT INTO `group_relation` VALUES (60, 20);
INSERT INTO `group_relation` VALUES (36, 21);
INSERT INTO `group_relation` VALUES (37, 21);
INSERT INTO `group_relation` VALUES (59, 21);
INSERT INTO `group_relation` VALUES (60, 21);
INSERT INTO `group_relation` VALUES (38, 22);
INSERT INTO `group_relation` VALUES (39, 22);
INSERT INTO `group_relation` VALUES (59, 22);
INSERT INTO `group_relation` VALUES (60, 22);

-- ----------------------------
-- Table structure for id_location
-- ----------------------------
DROP TABLE IF EXISTS `id_location`;
CREATE TABLE `id_location`  (
  `ID` int NOT NULL,
  `LOCATION_ID` int NOT NULL,
  PRIMARY KEY (`ID`, `LOCATION_ID`) USING BTREE,
  INDEX `I_L_LOCATION_ID_fk`(`LOCATION_ID`) USING BTREE,
  CONSTRAINT `I_L_ID_WECHATID_ID_fk` FOREIGN KEY (`ID`) REFERENCES `id_wechatid` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `I_L_LOCATION_ID_fk` FOREIGN KEY (`LOCATION_ID`) REFERENCES `location` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of id_location
-- ----------------------------
INSERT INTO `id_location` VALUES (33, 69);
INSERT INTO `id_location` VALUES (38, 81);
INSERT INTO `id_location` VALUES (59, 94);
INSERT INTO `id_location` VALUES (60, 95);
INSERT INTO `id_location` VALUES (61, 98);
INSERT INTO `id_location` VALUES (62, 100);
INSERT INTO `id_location` VALUES (63, 101);

-- ----------------------------
-- Table structure for id_wechatid
-- ----------------------------
DROP TABLE IF EXISTS `id_wechatid`;
CREATE TABLE `id_wechatid`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `WECHATID` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `ID_WECHATID_WECHATID_uindex`(`WECHATID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of id_wechatid
-- ----------------------------
INSERT INTO `id_wechatid` VALUES (58, 'Admin');
INSERT INTO `id_wechatid` VALUES (63, 'ads');
INSERT INTO `id_wechatid` VALUES (33, 'CWX123456');
INSERT INTO `id_wechatid` VALUES (38, 'CWX5');
INSERT INTO `id_wechatid` VALUES (39, 'CWX6');
INSERT INTO `id_wechatid` VALUES (40, 'CWX7');
INSERT INTO `id_wechatid` VALUES (60, 'shujuku');
INSERT INTO `id_wechatid` VALUES (61, 'shujuku2222');
INSERT INTO `id_wechatid` VALUES (62, 'shujuku222222');
INSERT INTO `id_wechatid` VALUES (48, 'zhanglang');
INSERT INTO `id_wechatid` VALUES (59, 'zhanlang2');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PARENT_ID` int NOT NULL,
  `LOCATION` char(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `LOCATION_pk`(`LOCATION`, `PARENT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = gbk COLLATE = gbk_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES (101, 1, '123');
INSERT INTO `location` VALUES (91, 1, '安徽');
INSERT INTO `location` VALUES (69, 1, '北京');
INSERT INTO `location` VALUES (71, 70, '北下关');
INSERT INTO `location` VALUES (95, 1, '朝阳区');
INSERT INTO `location` VALUES (81, 80, '成都');
INSERT INTO `location` VALUES (83, 82, '赤峰');
INSERT INTO `location` VALUES (92, 91, '凤阳');
INSERT INTO `location` VALUES (72, 1, '贵州');
INSERT INTO `location` VALUES (70, 69, '海淀');
INSERT INTO `location` VALUES (79, 78, '晋城');
INSERT INTO `location` VALUES (94, 93, '昆明');
INSERT INTO `location` VALUES (85, 84, '拉萨');
INSERT INTO `location` VALUES (82, 1, '内蒙古');
INSERT INTO `location` VALUES (98, 97, '南京');
INSERT INTO `location` VALUES (75, 74, '浦东');
INSERT INTO `location` VALUES (77, 76, '青岛');
INSERT INTO `location` VALUES (76, 1, '山东');
INSERT INTO `location` VALUES (78, 1, '山西');
INSERT INTO `location` VALUES (74, 1, '上海');
INSERT INTO `location` VALUES (100, 99, '实际上内');
INSERT INTO `location` VALUES (99, 1, '实时');
INSERT INTO `location` VALUES (96, 95, '世贸天街');
INSERT INTO `location` VALUES (97, 1, '是');
INSERT INTO `location` VALUES (80, 1, '四川');
INSERT INTO `location` VALUES (84, 1, '西藏');
INSERT INTO `location` VALUES (73, 72, '兴义');
INSERT INTO `location` VALUES (93, 1, '云南');

-- ----------------------------
-- Table structure for officialaccount
-- ----------------------------
DROP TABLE IF EXISTS `officialaccount`;
CREATE TABLE `officialaccount`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `INFO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MAINBODY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `OfficialAccount_NAME_uindex`(`NAME`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of officialaccount
-- ----------------------------
INSERT INTO `officialaccount` VALUES (1, '测试公众号1', '我是测试公众号1', '个人');
INSERT INTO `officialaccount` VALUES (2, '测试公众号2', '测试公众号2', '个人');
INSERT INTO `officialaccount` VALUES (3, '测试公众号3', '测试公众号3', '个人');
INSERT INTO `officialaccount` VALUES (4, '测试公众号4', '测试公众号4', '个人');
INSERT INTO `officialaccount` VALUES (5, '测试公众号5', '测试公众号5', '企业');
INSERT INTO `officialaccount` VALUES (6, '测试公众号6', '我是测试公众号6', '营销');
INSERT INTO `officialaccount` VALUES (7, '数据库公众号', '这是数据库公众号', '企业');
INSERT INTO `officialaccount` VALUES (8, '数据库测试51515151', '数据库测试51515151', '个人');
INSERT INTO `officialaccount` VALUES (9, '程雯鑫', '程雯鑫好看', '个人');

-- ----------------------------
-- Table structure for officialaccount_relation
-- ----------------------------
DROP TABLE IF EXISTS `officialaccount_relation`;
CREATE TABLE `officialaccount_relation`  (
  `User_ID` int NOT NULL,
  `Off_ID` int NOT NULL,
  PRIMARY KEY (`User_ID`, `Off_ID`) USING BTREE,
  INDEX `OfficialAccount_Relation_OfficialAccount_ID_fk`(`Off_ID`) USING BTREE,
  CONSTRAINT `OfficialAccount_Relation_ID_WECHATID_ID_fk` FOREIGN KEY (`User_ID`) REFERENCES `id_wechatid` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `OfficialAccount_Relation_OfficialAccount_ID_fk` FOREIGN KEY (`Off_ID`) REFERENCES `officialaccount` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of officialaccount_relation
-- ----------------------------
INSERT INTO `officialaccount_relation` VALUES (33, 1);
INSERT INTO `officialaccount_relation` VALUES (38, 1);
INSERT INTO `officialaccount_relation` VALUES (59, 1);
INSERT INTO `officialaccount_relation` VALUES (60, 1);
INSERT INTO `officialaccount_relation` VALUES (38, 2);
INSERT INTO `officialaccount_relation` VALUES (48, 2);
INSERT INTO `officialaccount_relation` VALUES (59, 2);
INSERT INTO `officialaccount_relation` VALUES (33, 3);
INSERT INTO `officialaccount_relation` VALUES (38, 3);
INSERT INTO `officialaccount_relation` VALUES (59, 3);
INSERT INTO `officialaccount_relation` VALUES (60, 4);
INSERT INTO `officialaccount_relation` VALUES (33, 5);
INSERT INTO `officialaccount_relation` VALUES (59, 5);
INSERT INTO `officialaccount_relation` VALUES (60, 5);
INSERT INTO `officialaccount_relation` VALUES (40, 6);
INSERT INTO `officialaccount_relation` VALUES (59, 6);
INSERT INTO `officialaccount_relation` VALUES (60, 7);
INSERT INTO `officialaccount_relation` VALUES (60, 8);
INSERT INTO `officialaccount_relation` VALUES (38, 9);

-- ----------------------------
-- Table structure for officialaccount_word
-- ----------------------------
DROP TABLE IF EXISTS `officialaccount_word`;
CREATE TABLE `officialaccount_word`  (
  `Off_ID` int NOT NULL,
  `Word_ID` int NOT NULL,
  PRIMARY KEY (`Off_ID`, `Word_ID`) USING BTREE,
  INDEX `OfficialAccount_Word_Word_ID_fk`(`Word_ID`) USING BTREE,
  CONSTRAINT `OfficialAccount_Word_OfficialAccount_ID_fk` FOREIGN KEY (`Off_ID`) REFERENCES `officialaccount` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `OfficialAccount_Word_Word_ID_fk` FOREIGN KEY (`Word_ID`) REFERENCES `word` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of officialaccount_word
-- ----------------------------
INSERT INTO `officialaccount_word` VALUES (1, 1);
INSERT INTO `officialaccount_word` VALUES (1, 2);
INSERT INTO `officialaccount_word` VALUES (1, 3);
INSERT INTO `officialaccount_word` VALUES (1, 5);
INSERT INTO `officialaccount_word` VALUES (3, 9);
INSERT INTO `officialaccount_word` VALUES (4, 11);
INSERT INTO `officialaccount_word` VALUES (6, 12);
INSERT INTO `officialaccount_word` VALUES (6, 25);
INSERT INTO `officialaccount_word` VALUES (5, 26);
INSERT INTO `officialaccount_word` VALUES (4, 27);
INSERT INTO `officialaccount_word` VALUES (7, 28);
INSERT INTO `officialaccount_word` VALUES (8, 29);
INSERT INTO `officialaccount_word` VALUES (3, 30);

-- ----------------------------
-- Table structure for relation
-- ----------------------------
DROP TABLE IF EXISTS `relation`;
CREATE TABLE `relation`  (
  `MYID` int NOT NULL,
  `FRIENDID` int NOT NULL,
  `REMARK` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MYID`, `FRIENDID`) USING BTREE,
  INDEX `RELATION_ID_WECHATID_ID_fk_2`(`FRIENDID`) USING BTREE,
  CONSTRAINT `RELATION_ID_WECHATID_ID_fk` FOREIGN KEY (`MYID`) REFERENCES `id_wechatid` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `RELATION_ID_WECHATID_ID_fk_2` FOREIGN KEY (`FRIENDID`) REFERENCES `id_wechatid` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of relation
-- ----------------------------
INSERT INTO `relation` VALUES (33, 39, 'CWX6');
INSERT INTO `relation` VALUES (59, 33, '程雯鑫2');
INSERT INTO `relation` VALUES (60, 33, '程雯鑫2');
INSERT INTO `relation` VALUES (60, 38, 'CWX5');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `ID` int NOT NULL,
  `PHONE` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `USERNAME` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET gbk COLLATE gbk_chinese_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  CONSTRAINT `USERINFO_ID_WECHATID_ID_fk` FOREIGN KEY (`ID`) REFERENCES `id_wechatid` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (33, '18900662663', 'CWX123456', '程雯鑫2', '', '18281034@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (38, '150', 'CWX123456', 'CWX5', '我是CWX5', '18281177@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (39, '160', 'CWX123456', 'CWX6', '我是CWX6', '18281178@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (48, '110', 'CWX123456', '青蛙', '我是青蛙！', '18281180@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (58, '110', 'Admin123', '管理员', '管理员帐号', 'Admin@admin.cn');
INSERT INTO `userinfo` VALUES (59, '18801116795', 'CWX123456', '战狼2', '战狼2！！！', '18281195@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (60, '18801116789', 'QaZ872', '数据库拉拉', '', '18281190@bjtu.edu.cn');
INSERT INTO `userinfo` VALUES (63, '12', 'Wc23234', 'asd', 'qwe', 'asd@bjtu.edu.cn');

-- ----------------------------
-- Table structure for word
-- ----------------------------
DROP TABLE IF EXISTS `word`;
CREATE TABLE `word`  (
  `ID` int NOT NULL AUTO_INCREMENT,
  `INFO` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of word
-- ----------------------------
INSERT INTO `word` VALUES (1, '测试文章1', '测试1');
INSERT INTO `word` VALUES (2, '测试文章2', '测试2');
INSERT INTO `word` VALUES (3, '测试文章3', '测试3');
INSERT INTO `word` VALUES (5, '我是测试文章4', '测试文章4');
INSERT INTO `word` VALUES (9, '我是测试文章5', '测试文章5');
INSERT INTO `word` VALUES (11, '测试公众号6', '测试公众号6');
INSERT INTO `word` VALUES (12, '我是测试文章7', '测试文章7');
INSERT INTO `word` VALUES (25, '我是测试文章8', '测试文章8');
INSERT INTO `word` VALUES (26, '我是测试文章9', '测试文章9');
INSERT INTO `word` VALUES (27, '这是测试公众号文章4', '测试公众号文章4');
INSERT INTO `word` VALUES (28, '数据库公众号１', '数据库公众号１');
INSERT INTO `word` VALUES (29, '今天是周二', '周二');
INSERT INTO `word` VALUES (30, '程雯鑫好看', '程雯鑫');

-- ----------------------------
-- View structure for id_info
-- ----------------------------
DROP VIEW IF EXISTS `id_info`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `id_info` AS select `userinfo`.`ID` AS `ID`,`id_wechatid`.`WECHATID` AS `WECHATID`,`userinfo`.`PHONE` AS `PHONE`,`userinfo`.`PASSWORD` AS `PASSWORD`,`userinfo`.`USERNAME` AS `USERNAME`,`userinfo`.`signature` AS `signature`,`userinfo`.`email` AS `email` from (`id_wechatid` join `userinfo`) where (`userinfo`.`ID` = `id_wechatid`.`ID`);

-- ----------------------------
-- View structure for user_loctaion
-- ----------------------------
DROP VIEW IF EXISTS `user_loctaion`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `user_loctaion` AS select `id_info`.`USERNAME` AS `USERNAME`,`location`.`LOCATION` AS `LOCATION` from ((`id_location` join `location`) join `id_info`) where ((`id_location`.`LOCATION_ID` = `location`.`ID`) and (`id_location`.`ID` = `id_info`.`ID`));

-- ----------------------------
-- Procedure structure for delete_location
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_location`;
delimiter ;;
CREATE PROCEDURE `delete_location`(IN location_id INT(11))
begin
    declare Location_id int(11) default null;
    set Location_id = (select id from LOCATION where PARENT_ID = location_id);
    while Location_id IS NOT NULL do
      delete from LOCATION where ID = location_id;
      set Location_id = (select id from LOCATION where PARENT_ID = location_id);
    end while;
  end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for get_full_location
-- ----------------------------
DROP PROCEDURE IF EXISTS `get_full_location`;
delimiter ;;
CREATE PROCEDURE `get_full_location`(IN LOCATION_ID int)
BEGIN
    DECLARE fullLocation varchar(255);
    DECLARE parentId INTEGER;
    set fullLocation = (select LOCATION from LOCATION where ID = LOCATION_ID);
    set parentId = (SELECT PARENT_ID FROM LOCATION WHERE ID = LOCATION_ID);
    WHILE parentId != 1 do
      set LOCATION_ID = parentId;
      set parentId = (SELECT PARENT_ID FROM LOCATION WHERE ID = LOCATION_ID);
      set fullLocation = CONCAT(fullLocation," ",(select LOCATION from LOCATION where ID = LOCATION_ID));
    end while;
    select fullLocation;
  end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for INSERTINTOOFF
-- ----------------------------
DROP PROCEDURE IF EXISTS `INSERTINTOOFF`;
delimiter ;;
CREATE PROCEDURE `INSERTINTOOFF`(IN ID int, IN Off int)
BEGIN
  IF ID NOT IN (SELECT User_ID FROM OfficialAccount_Relation WHERE Off_ID = Off)
    THEN
    INSERT INTO OfficialAccount_Relation(Off_ID,User_ID) VALUES (Off,ID);
    commit;
  end if;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table id_wechatid
-- ----------------------------
DROP TRIGGER IF EXISTS `DELETE_WITH`;
delimiter ;;
CREATE TRIGGER `DELETE_WITH` AFTER DELETE ON `id_wechatid` FOR EACH ROW BEGIN
    DELETE FROM USERINFO WHERE USERINFO.ID = OLD.ID;
    DELETE FROM RELATION WHERE RELATION.MYID = OLD.ID OR RELATION.FRIENDID = OLD.ID;
    DELETE FROM ID_LOCATION WHERE ID_LOCATION.ID = OLD.ID;
  end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table userinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `CHECK_MAIL`;
delimiter ;;
CREATE TRIGGER `CHECK_MAIL` BEFORE INSERT ON `userinfo` FOR EACH ROW BEGIN
    IF(NEW.email in (SELECT email FROM USERINFO))
    then
      SIGNAL SQLSTATE 'TX000' SET MESSAGE_TEXT = '邮箱重复！';
    end if;
  end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
