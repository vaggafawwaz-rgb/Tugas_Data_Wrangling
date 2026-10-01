-- ===== Skema & data CRM (SQLite / PostgreSQL) =====
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id      VARCHAR(10) PRIMARY KEY,
    customer_name    VARCHAR(100) NOT NULL,
    membership_tier  VARCHAR(20),
    city             VARCHAR(50),
    join_date        DATE,
    is_active        INTEGER NOT NULL DEFAULT 1   -- 1 = aktif, 0 = nonaktif
);

INSERT INTO customers (customer_id, customer_name, membership_tier, city, join_date, is_active) VALUES
('C0001', 'Budi Santoso',   'Gold',     'Jakarta',    '2022-03-15', 1),
('C0002', 'Siti Aminah',    'Silver',   'Bandung',    '2023-01-20', 1),
('C0003', 'Agus Wijaya',    'Bronze',   'Semarang',   '2024-06-05', 1),
('C0004', 'Dewi Lestari',   'Platinum', 'Surabaya',   '2021-11-30', 1),
('C0005', 'Rina Kartika',   'Silver',   'Pemalang',   '2023-08-12', 1),
('C0006', 'Eko Prasetyo',   'Bronze',   'Yogyakarta', '2024-02-02', 1),
('C0007', 'Maya Sari',      'Gold',     'Medan',      '2022-09-09', 0),
('C0008', 'Hendra Gunawan', 'Bronze',   'Semarang',   '2025-01-10', 0);

-- ===== Kueri ekstraksi (dipakai di pd.read_sql) =====
SELECT customer_id, customer_name, membership_tier, city
FROM customers
WHERE is_active = 1;
