Create table If Not Exists Users_38 (
user_id int, 
name varchar(40)
);
Truncate table Users_38;

insert into Users_38 (user_id, name) values ('1', 'aLice');
insert into Users_38 (user_id, name) values ('2', 'bOB');

SELECT * FROM Users_38;

/*
Q. Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.
Return the result table ordered by user_id.
The result format is in the following example.

Input: 
Users table:
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | aLice |
| 2       | bOB   |
+---------+-------+
Output: 
+---------+-------+
| user_id | name  |
+---------+-------+
| 1       | Alice |
| 2       | Bob   |
+---------+-------+
*/

SELECT user_id , CONCAT(UPPER(SUBSTR(name,1,1)),LOWER(SUBSTR(name,2))) AS name 
FROM Users_38
ORDER BY user_id;
