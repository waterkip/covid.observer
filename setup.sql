
DROP DATABASE IF EXISTS covid;
CREATE DATABASE IF NOT EXISTS covid;
CREATE USER IF NOT EXISTS 'covid'@'localhost' IDENTIFIED BY 'covid';
GRANT CREATE      ON covid.* TO 'covid'@'localhost';
GRANT DROP        ON covid.* TO 'covid'@'localhost';
GRANT INSERT      ON covid.* TO 'covid'@'localhost';
GRANT DELETE      ON covid.* TO 'covid'@'localhost';
GRANT LOCK TABLES ON covid.* TO 'covid'@'localhost';
GRANT SELECT      ON covid.* TO 'covid'@'localhost';
USE covid;
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
cc varchar(5) DEFAULT NULL,
country varchar(50) DEFAULT NULL,
continent char(2) DEFAULT '',
population double DEFAULT 0,
life_expectancy double DEFAULT 0
);
DROP TABLE IF EXISTS daily_totals;
CREATE TABLE daily_totals (
date date DEFAULT NULL,
confirmed int DEFAULT 0,
failed int DEFAULT 0,
recovered int DEFAULT 0
);
DROP TABLE IF EXISTS per_day;
CREATE TABLE per_day (
cc varchar(5) DEFAULT NULL,
date date DEFAULT NULL,
confirmed int DEFAULT 0,
failed int DEFAULT 0,
recovered int DEFAULT 0
);
DROP TABLE IF EXISTS totals;
CREATE TABLE totals (
cc varchar(5) DEFAULT NULL,
confirmed int DEFAULT 0,
failed int DEFAULT 0,
recovered int DEFAULT 0
);
