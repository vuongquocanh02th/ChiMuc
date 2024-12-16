use classicmodels;

select * from customers where customerName = 'Land of Toys Inc.';

alter table customers add index idx_customerName(customerName);
explain select * from customers where customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

ALTER TABLE customers DROP INDEX idx_full_name;