-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2019 at 09:40 PM
-- Server version: 5.7.21-1
-- PHP Version: 7.2.4-1+b1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama`, `jenis`, `harga_beli`, `harga_jual`) VALUES
('002', 'Pensil', 'Alat Tulis', 2500, 3000),
('003', 'LCD AAA', 'Elektronik', 900000, 1200000),
('004', 'Mouse', 'Elektronik', 55000, 80000);

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id_nota`, `kd_barang`, `harga_beli`, `harga_jual`, `qty`) VALUES
('IN0001', '003', 900000, 1200000, 1),
('IN0001', '004', 55000, 80000, 2),
('IN0002', '002', 2500, 3000, 10),
('IN0003', '004', 55000, 80000, 1),
('IN0004', '003', 900000, 1200000, 5),
('IN0005', '003', 900000, 1200000, 1),
('IN0006', '004', 55000, 80000, 3),
('IN0006', '002', 2500, 3000, 2),
('IN0007', '002', 2500, 3000, 5),
('IN0008', '003', 900000, 1200000, 5),
('IN0008', '002', 2500, 3000, 10),
('IN0009', '004', 55000, 80000, 100),
('IN0010', '002', 2500, 3000, 1000),
('IN0011', '002', 2500, 3000, 1),
('IN0012', '002', 2500, 3000, 12),
('IN0013', '004', 55000, 80000, 3),
('IN0014', '004', 55000, 80000, 1),
('IN0015', '003', 900000, 1200000, 2),
('IN0016', '002', 2500, 3000, 1),
('IN0017', '002', 2500, 3000, 3),
('IN0018', '003', 900000, 1200000, 2),
('IN0019', '002', 2500, 3000, 3),
('IN0020', '003', 900000, 1200000, 3),
('IN0020', '002', 2500, 3000, 5),
('IN0021', '003', 900000, 1200000, 4),
('IN0022', '004', 55000, 80000, 12),
('IN0022', '002', 2500, 3000, 1),
('IN0022', '003', 900000, 1200000, 2),
('IN0023', '002', 2500, 3000, 300),
('IN0023', '003', 900000, 1200000, 5),
('IN0023', '004', 55000, 80000, 2),
('IN0024', '003', 900000, 1200000, 1),
('IN0025', '004', 55000, 80000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `id_pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `tanggal`, `id_pelanggan`) VALUES
('IN0001', '2019-05-31', '001'),
('IN0002', '2019-05-31', '002'),
('IN0003', '2019-05-31', '005'),
('IN0004', '2019-06-15', '002'),
('IN0005', '2019-06-16', '003'),
('IN0006', '2019-06-16', '003'),
('IN0007', '2019-06-16', '002'),
('IN0008', '2019-06-21', '001'),
('IN0009', '2019-06-21', '001'),
('IN0010', '2019-06-21', '002'),
('IN0011', '2019-06-21', '003'),
('IN0012', '2019-06-21', '002'),
('IN0013', '2019-06-21', '001'),
('IN0014', '2019-06-21', '002'),
('IN0015', '2019-06-21', '001'),
('IN0016', '2019-06-21', '005'),
('IN0017', '2019-06-21', '002'),
('IN0018', '2019-06-21', '002'),
('IN0019', '2019-06-21', '001'),
('IN0020', '2019-06-21', '001'),
('IN0021', '2019-06-21', '003'),
('IN0022', '2019-06-21', '002'),
('IN0023', '2019-06-21', '001'),
('IN0024', '2019-06-21', '002'),
('IN0025', '2019-06-21', '001');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(6) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `no_telp`, `alamat`) VALUES
('001', 'Ahmad P', 'Laki-Laki', '089672446477', 'Depok'),
('002', 'Steve Job', 'Laki-Laki', '0187674567', 'New York'),
('003', 'Anonymous', 'Perempuan', '0123456789', 'DKI Jakarta'),
('004', 'Saya', 'Perempuan', '0219999999', 'Jakarta Selatan'),
('005', 'Kamu', 'Perempuan', '0898989898989', 'Bogor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
