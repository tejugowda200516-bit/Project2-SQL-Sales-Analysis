# PROJECT 2: SQL SALES DATA ANALYSIS

## 1. Select the Database

USE week2_sales_database;

## 2. Count Total Records

SELECT COUNT(*) AS total_records
FROM sales;

## 3. Calculate Total Revenue

SELECT SUM(total_price) AS total_revenue
FROM sales;

## 4. Find Best-Selling Products by Quantity

SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product_name
ORDER BY total_quantity_sold DESC;

## 5. Analyze Revenue by Region

SELECT
    region,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

## 6. Analyze Revenue by Category

SELECT
    category,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

## 7. Find Top 10 Products by Revenue

SELECT
    product_name,
    SUM(total_price) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;