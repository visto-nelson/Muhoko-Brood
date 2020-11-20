-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 01:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ossn`
--

-- --------------------------------------------------------

--
-- Table structure for table `ossn_annotations`
--

CREATE TABLE `ossn_annotations` (
  `id` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_annotations`
--

INSERT INTO `ossn_annotations` (`id`, `owner_guid`, `subject_guid`, `type`, `time_created`) VALUES
(1, 2, 4, 'comments:post', 1605165892),
(2, 1, 4, 'comments:post', 1605166213),
(3, 1, 7, 'comments:post', 1605186700);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_components`
--

CREATE TABLE `ossn_components` (
  `id` bigint(20) NOT NULL,
  `com_id` varchar(50) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_components`
--

INSERT INTO `ossn_components` (`id`, `com_id`, `active`) VALUES
(1, 'OssnProfile', 1),
(2, 'OssnWall', 1),
(3, 'OssnComments', 1),
(4, 'OssnLikes', 1),
(5, 'OssnPhotos', 1),
(6, 'OssnNotifications', 1),
(7, 'OssnSearch', 1),
(8, 'OssnMessages', 1),
(9, 'OssnAds', 1),
(10, 'OssnGroups', 1),
(11, 'OssnSitePages', 1),
(12, 'OssnBlock', 1),
(13, 'OssnChat', 1),
(14, 'OssnPoke', 1),
(15, 'OssnInvite', 1),
(16, 'OssnEmbed', 1),
(17, 'OssnSmilies', 1),
(18, 'OssnSounds', 1),
(19, 'OssnAutoPagination', 1),
(20, 'OssnMessageTyping', 1),
(21, 'OssnRealTimeComments', 1),
(22, 'OssnPostBackground', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_entities`
--

CREATE TABLE `ossn_entities` (
  `guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) DEFAULT NULL,
  `permission` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_entities`
--

INSERT INTO `ossn_entities` (`guid`, `owner_guid`, `type`, `subtype`, `time_created`, `time_updated`, `permission`, `active`) VALUES
(1, 1, 'user', 'birthdate', 1605075613, 1605161982, 2, 1),
(2, 1, 'user', 'gender', 1605075613, 1605161982, 2, 1),
(3, 1, 'user', 'password_algorithm', 1605075613, 0, 2, 1),
(4, 1, 'user', 'cover_time', 1605076702, 0, 2, 1),
(5, 1, 'object', 'item_type', 1605161065, 0, 2, 1),
(6, 1, 'object', 'item_guid', 1605161065, 0, 2, 1),
(7, 1, 'object', 'poster_guid', 1605161065, 0, 2, 1),
(8, 1, 'object', 'access', 1605161066, 0, 2, 1),
(9, 1, 'object', 'time_updated', 1605161066, 0, 2, 1),
(10, 1, 'user', 'file:profile:photo', 1605161969, 0, 2, 1),
(11, 1, 'user', 'icon_time', 1605161972, 1605162182, 2, 1),
(12, 1, 'user', 'icon_guid', 1605161972, 1605162182, 2, 1),
(13, 2, 'object', 'item_type', 1605161972, 0, 2, 1),
(14, 2, 'object', 'item_guid', 1605161972, 0, 2, 1),
(15, 2, 'object', 'poster_guid', 1605161972, 0, 2, 1),
(16, 2, 'object', 'access', 1605161972, 0, 2, 1),
(17, 2, 'object', 'time_updated', 1605161972, 0, 2, 1),
(18, 1, 'user', 'language', 1605161982, 0, 2, 1),
(19, 1, 'user', 'file:profile:photo', 1605162180, 0, 2, 1),
(20, 3, 'object', 'item_type', 1605162182, 0, 2, 1),
(21, 3, 'object', 'item_guid', 1605162182, 0, 2, 1),
(22, 3, 'object', 'poster_guid', 1605162182, 0, 2, 1),
(23, 3, 'object', 'access', 1605162182, 0, 2, 1),
(24, 3, 'object', 'time_updated', 1605162182, 0, 2, 1),
(25, 2, 'user', 'birthdate', 1605165541, 1605175346, 2, 1),
(26, 2, 'user', 'gender', 1605165541, 1605175346, 2, 1),
(27, 2, 'user', 'password_algorithm', 1605165541, 0, 2, 1),
(28, 4, 'object', 'item_type', 1605165798, 0, 2, 1),
(29, 4, 'object', 'item_guid', 1605165798, 0, 2, 1),
(30, 4, 'object', 'poster_guid', 1605165798, 0, 2, 1),
(31, 4, 'object', 'access', 1605165798, 0, 2, 1),
(32, 4, 'object', 'time_updated', 1605165798, 0, 2, 1),
(33, 1, 'annotation', 'comments:post', 1605165892, 0, 2, 1),
(34, 2, 'user', 'cover_time', 1605165951, 0, 2, 1),
(35, 2, 'annotation', 'comments:post', 1605166213, 0, 2, 1),
(36, 2, 'user', 'file:profile:photo', 1605175305, 0, 2, 1),
(37, 2, 'user', 'icon_time', 1605175306, 1605175397, 2, 1),
(38, 2, 'user', 'icon_guid', 1605175306, 1605175397, 2, 1),
(39, 5, 'object', 'item_type', 1605175306, 0, 2, 1),
(40, 5, 'object', 'item_guid', 1605175306, 0, 2, 1),
(41, 5, 'object', 'poster_guid', 1605175306, 0, 2, 1),
(42, 5, 'object', 'access', 1605175306, 0, 2, 1),
(43, 5, 'object', 'time_updated', 1605175306, 0, 2, 1),
(44, 2, 'user', 'cover_position', 1605175327, 0, 2, 1),
(45, 2, 'user', 'language', 1605175346, 0, 2, 1),
(46, 2, 'user', 'file:profile:photo', 1605175397, 0, 2, 1),
(47, 6, 'object', 'item_type', 1605175397, 0, 2, 1),
(48, 6, 'object', 'item_guid', 1605175397, 0, 2, 1),
(49, 6, 'object', 'poster_guid', 1605175397, 0, 2, 1),
(50, 6, 'object', 'access', 1605175397, 0, 2, 1),
(51, 6, 'object', 'time_updated', 1605175397, 0, 2, 1),
(52, 7, 'object', 'item_type', 1605186625, 0, 2, 1),
(53, 7, 'object', 'item_guid', 1605186625, 0, 2, 1),
(54, 7, 'object', 'poster_guid', 1605186625, 0, 2, 1),
(55, 7, 'object', 'access', 1605186625, 0, 2, 1),
(56, 7, 'object', 'time_updated', 1605186625, 0, 2, 1),
(57, 3, 'annotation', 'comments:post', 1605186700, 0, 2, 1),
(58, 8, 'object', 'membership', 1605186751, 0, 2, 1),
(59, 9, 'object', 'item_type', 1605186791, 0, 2, 1),
(60, 9, 'object', 'item_guid', 1605186791, 0, 2, 1),
(61, 9, 'object', 'poster_guid', 1605186791, 0, 2, 1),
(62, 9, 'object', 'access', 1605186791, 0, 2, 1),
(63, 9, 'object', 'time_updated', 1605186791, 0, 2, 1),
(64, 8, 'object', 'file:cover', 1605187614, 0, 2, 1),
(65, 8, 'object', 'cover', 1605187649, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_entities_metadata`
--

CREATE TABLE `ossn_entities_metadata` (
  `id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_entities_metadata`
--

INSERT INTO `ossn_entities_metadata` (`id`, `guid`, `value`) VALUES
(1, 1, '14/10/1997'),
(2, 2, 'male'),
(3, 3, 'bcrypt'),
(4, 4, '1605076702'),
(5, 5, ''),
(6, 6, ''),
(7, 7, '1'),
(8, 8, '2'),
(9, 9, '0'),
(10, 10, 'profile/photo/6ab0c726b91911eb8cf2a44037241d88.jpg'),
(11, 11, '1605162182'),
(12, 12, '19'),
(13, 13, 'profile:photo'),
(14, 14, '10'),
(15, 15, '1'),
(16, 16, '2'),
(17, 17, '0'),
(18, 18, 'en'),
(19, 19, 'profile/photo/0fe9c7d9ea8a250f8a3f85cdd2a7e040.jpg'),
(20, 20, 'profile:photo'),
(21, 21, '19'),
(22, 22, '1'),
(23, 23, '2'),
(24, 24, '0'),
(25, 25, '03/11/1999'),
(26, 26, 'female'),
(27, 27, 'bcrypt'),
(28, 28, ''),
(29, 29, ''),
(30, 30, '2'),
(31, 31, '2'),
(32, 32, '0'),
(33, 33, 'It is really wonderful I love it to &#x1f929;'),
(34, 34, '1605165951'),
(35, 35, 'Who doesn&#039;t &#x1f911;.....???'),
(36, 36, 'profile/photo/2d28151d9e8e02ea178dd50b8e04809e.jpeg'),
(37, 37, '1605175397'),
(38, 38, '46'),
(39, 39, 'profile:photo'),
(40, 40, '36'),
(41, 41, '2'),
(42, 42, '2'),
(43, 43, '0'),
(44, 44, '[\"0px\",\"0px\"]'),
(45, 45, 'en'),
(46, 46, 'profile/photo/ce0da682841325e25cd9b0a6be4bb396.jpeg'),
(47, 47, 'profile:photo'),
(48, 48, '46'),
(49, 49, '2'),
(50, 50, '2'),
(51, 51, '0'),
(52, 52, ''),
(53, 53, ''),
(54, 54, '2'),
(55, 55, '2'),
(56, 56, '0'),
(57, 57, 'Were are you at &#x1f622;..??'),
(58, 58, '1'),
(59, 59, ''),
(60, 60, ''),
(61, 61, '1'),
(62, 62, '1'),
(63, 63, '0'),
(64, 64, 'cover/9eb3da1b210bf77c5a2bf9828909bdb5.jpg'),
(65, 65, '[\"0\",\"-388\"]');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_likes`
--

CREATE TABLE `ossn_likes` (
  `id` bigint(20) NOT NULL,
  `subject_id` bigint(20) NOT NULL,
  `guid` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `subtype` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_likes`
--

INSERT INTO `ossn_likes` (`id`, `subject_id`, `guid`, `type`, `subtype`) VALUES
(1, 1, 1, 'post', 'like'),
(2, 1, 2, 'post', 'love'),
(3, 19, 2, 'entity', 'love');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_messages`
--

CREATE TABLE `ossn_messages` (
  `id` bigint(20) NOT NULL,
  `message_from` bigint(20) NOT NULL,
  `message_to` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ossn_notifications`
--

CREATE TABLE `ossn_notifications` (
  `guid` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  `poster_guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `subject_guid` bigint(20) NOT NULL,
  `viewed` varchar(1) DEFAULT NULL,
  `time_created` int(11) NOT NULL,
  `item_guid` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_notifications`
--

INSERT INTO `ossn_notifications` (`guid`, `type`, `poster_guid`, `owner_guid`, `subject_guid`, `viewed`, `time_created`, `item_guid`) VALUES
(1, 'like:post', 2, 1, 1, '', 1605165740, 1),
(2, 'comments:post', 1, 2, 4, '', 1605166213, 2),
(3, 'like:entity:file:profile:photo', 2, 1, 19, '', 1605184372, 19),
(4, 'comments:post', 1, 2, 7, '', 1605186700, 3),
(5, 'group:joinrequest', 2, 1, 8, '', 1605187236, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_object`
--

CREATE TABLE `ossn_object` (
  `guid` bigint(20) NOT NULL,
  `owner_guid` bigint(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `time_created` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `subtype` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_object`
--

INSERT INTO `ossn_object` (`guid`, `owner_guid`, `type`, `time_created`, `title`, `description`, `subtype`) VALUES
(1, 1, 'user', 1605161065, '', '{\"post\":\"Hi there I am Visto.. &amp;#x1f600;\"}', 'wall'),
(2, 1, 'user', 1605161972, '', '{\"post\":\"null:data\"}', 'wall'),
(3, 1, 'user', 1605162182, '', '{\"post\":\"null:data\"}', 'wall'),
(4, 2, 'user', 1605165798, '', '{\"post\":\"Hello Merlyn here, I Just Open source social network\"}', 'wall'),
(5, 2, 'user', 1605175306, '', '{\"post\":\"null:data\"}', 'wall'),
(6, 2, 'user', 1605175397, '', '{\"post\":\"null:data\"}', 'wall'),
(7, 2, 'user', 1605186625, '', '{\"post\":\"I am having a good time &amp;#x1f942;\"}', 'wall'),
(8, 1, 'user', 1605186751, 'Intern', '', 'ossngroup'),
(9, 8, 'group', 1605186791, '', '{\"post\":\"Well come to my group guys...\\r\\n\"}', 'wall');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_relationships`
--

CREATE TABLE `ossn_relationships` (
  `relation_id` bigint(20) NOT NULL,
  `relation_from` bigint(20) NOT NULL,
  `relation_to` bigint(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_relationships`
--

INSERT INTO `ossn_relationships` (`relation_id`, `relation_from`, `relation_to`, `type`, `time`) VALUES
(1, 2, 4, 'rtctypingpost', 1605165891),
(2, 1, 4, 'rtctypingpost', 1605166211),
(3, 1, 2, 'friend:request', 1605175105),
(4, 2, 1, 'friend:request', 1605175179),
(5, 1, 10, 'rtctypingentity', 1605185260),
(6, 1, 46, 'rtctypingentity', 1605185950),
(7, 1, 7, 'rtctypingpost', 1605186698),
(8, 1, 8, 'group:join', 1605186751),
(9, 8, 1, 'group:join:approve', 1605186751),
(10, 2, 7, 'rtctypingpost', 1605187138),
(12, 1, 19, 'rtctypingentity', 1605518542);

-- --------------------------------------------------------

--
-- Table structure for table `ossn_site_settings`
--

CREATE TABLE `ossn_site_settings` (
  `setting_id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_site_settings`
--

INSERT INTO `ossn_site_settings` (`setting_id`, `name`, `value`) VALUES
(1, 'theme', 'goblue'),
(2, 'site_name', 'Muhoko brood'),
(3, 'language', 'en'),
(4, 'cache', '0'),
(5, 'owner_email', 'nelsonvisto97@gmail.com'),
(6, 'notification_email', 'noreply@localhost'),
(7, 'upgrades', '[\"1410545706.php\",\"1411396351.php\", \"1412353569.php\",\"1415553653.php\",\"1415819862.php\", \"1423419053.php\", \"1423419054.php\", \"1439295894.php\", \"1440716428.php\", \"1440867331.php\", \"1440603377.php\", \"1443202118.php\", \"1443211017.php\", \"1443545762.php\", \"1443617470.php\", \"1446311454.php\", \"1448807613.php\", \"1453676400.php\", \"1459411815.php\", \"1468010638.php\", \"1470127853.php\", \"1480759958.php\", \"1495366993.php\", \"1513524535.php\", \"1513603766.php\", \"1513783390.php\", \"1542223614.php\", \"1564080285.php\", \"1577836800.php\", \"1597058454.php\", \"1597734806.php\", \"1598389337.php\"]'),
(9, 'display_errors', 'off'),
(10, 'site_key', '68190429'),
(11, 'last_cache', '0'),
(12, 'site_version', '5.5');

-- --------------------------------------------------------

--
-- Table structure for table `ossn_users`
--

CREATE TABLE `ossn_users` (
  `guid` bigint(20) NOT NULL,
  `type` text NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `salt` varchar(8) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `last_login` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `activation` varchar(32) DEFAULT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ossn_users`
--

INSERT INTO `ossn_users` (`guid`, `type`, `username`, `email`, `password`, `salt`, `first_name`, `last_name`, `last_login`, `last_activity`, `activation`, `time_created`) VALUES
(1, 'admin', 'Visto', 'nelsonvisto97@gmail.com', '$2y$10$Q5uvX3BlWEC.XG6jb1dfLeg9vMtUPCm0IF6oKjd.OZ46faHm9rhIS', '29d18ca8', 'Nelson', 'Visto', 1605524321, 1605600063, '', 1605075613),
(2, 'normal', 'Merlyn', 'merlynjagger@gmail.com', '$2y$10$d57GI8vkldymOKkfiaDfEuR4ZEKm6f5DCoXC4YBIDsb9F4jpJEHPm', '1e4e9b3b', 'Merlyn', 'Jagger', 1605515604, 1605515630, '', 1605165541);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ossn_annotations`
--
ALTER TABLE `ossn_annotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `subject_guid` (`subject_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_components`
--
ALTER TABLE `ossn_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ossn_entities`
--
ALTER TABLE `ossn_entities`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `time_updated` (`time_updated`),
  ADD KEY `active` (`active`),
  ADD KEY `permission` (`permission`),
  ADD KEY `type` (`type`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `eky_ts` (`type`,`subtype`),
  ADD KEY `eky_tso` (`type`,`subtype`,`owner_guid`);

--
-- Indexes for table `ossn_entities_metadata`
--
ALTER TABLE `ossn_entities_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guid` (`guid`);
ALTER TABLE `ossn_entities_metadata` ADD FULLTEXT KEY `value` (`value`);

--
-- Indexes for table `ossn_likes`
--
ALTER TABLE `ossn_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subtype` (`subtype`);

--
-- Indexes for table `ossn_messages`
--
ALTER TABLE `ossn_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_to` (`message_to`),
  ADD KEY `message_from` (`message_from`);

--
-- Indexes for table `ossn_notifications`
--
ALTER TABLE `ossn_notifications`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `poster_guid` (`poster_guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `subject_guid` (`subject_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `item_guid` (`item_guid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_object`
--
ALTER TABLE `ossn_object`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `type` (`type`),
  ADD KEY `subtype` (`subtype`),
  ADD KEY `oky_ts` (`type`,`subtype`),
  ADD KEY `oky_tsg` (`type`,`subtype`,`guid`);

--
-- Indexes for table `ossn_relationships`
--
ALTER TABLE `ossn_relationships`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `relation_to` (`relation_to`),
  ADD KEY `relation_from` (`relation_from`),
  ADD KEY `time` (`time`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `ossn_site_settings`
--
ALTER TABLE `ossn_site_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `ossn_users`
--
ALTER TABLE `ossn_users`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `last_login` (`last_login`),
  ADD KEY `last_activity` (`last_activity`),
  ADD KEY `time_created` (`time_created`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `type` (`type`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `email` (`email`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `first_name` (`first_name`);
ALTER TABLE `ossn_users` ADD FULLTEXT KEY `last_name` (`last_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ossn_annotations`
--
ALTER TABLE `ossn_annotations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ossn_components`
--
ALTER TABLE `ossn_components`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `ossn_entities`
--
ALTER TABLE `ossn_entities`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ossn_entities_metadata`
--
ALTER TABLE `ossn_entities_metadata`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ossn_likes`
--
ALTER TABLE `ossn_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ossn_messages`
--
ALTER TABLE `ossn_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ossn_notifications`
--
ALTER TABLE `ossn_notifications`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ossn_object`
--
ALTER TABLE `ossn_object`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ossn_relationships`
--
ALTER TABLE `ossn_relationships`
  MODIFY `relation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ossn_site_settings`
--
ALTER TABLE `ossn_site_settings`
  MODIFY `setting_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ossn_users`
--
ALTER TABLE `ossn_users`
  MODIFY `guid` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
