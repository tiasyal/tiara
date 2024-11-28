create database company;
use company;
create table employees(
  id int primary key auto_increment,
  name varchar(100),
  position varchar(100),
  salary decimal(10,2),
  date_of_joining DATE
);

select * from employees;

insert into employees(name, position, salary, date_of_joining)
values("John Doe", "Manager",55000.00,"2020-01-15"),
("Jane Smith","Developer",48000.00,"2019-07-10"),
("Alice Johnson","Designer",45000.00,"2021-03-22"),
("Bob Brown","Developer",50000.00,"2018-11-01");

select * from employees; 

select * from employees where position="Developer";

SET SQL_SAFE_UPDATES = 0;
update employees
set salary=46000.00 where name="Alice Johnson";
select * from employees;

delete from employees where name="Bob Brown";
select * from employees;

select name from employees where salary>48000; 

alter table employees
add email varchar(20);
select * from employees;

update employees
set email="john.doe@company.com" where name="John Doe";
select * from employees;

select name, salary from employees;

select count(date_of_joining) from employees where date_of_joining>"2020-01-01";

select * from employees order by salary desc;

alter table employees
drop email;
select * from employees;

select name from employees order by salary desc limit 1 ;