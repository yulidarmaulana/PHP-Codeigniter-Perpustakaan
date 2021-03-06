-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2020 at 02:45 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` varchar(2) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nis`, `nama`, `jk`, `ttl`, `kelas`, `image`) VALUES
('121201', 'ahmad', 'L', '2020-07-04', 'VII', 'ahmad2.jpg'),
('121209', 'Fahira', 'P', '2018-01-02', 'VII', ''),
('121210', 'Panji Asmoro', 'L', '2017-09-18', '07', ''),
('121211', 'Bayu Agung ', 'L', '2017-09-18', '07', ''),
('121212', 'saya', 'L', '2000-07-01', 'VII', 'saya.jpg'),
('121213', 'hana', 'L', '2018-01-19', 'VII', 'hana.jpg'),
('121214', 'Samudera', 'L', '2018-01-26', 'VII', ''),
('121216', 'Baim', 'L', '2018-01-26', 'VII', 'user1.jpg'),
('121217', 'Cahyo', 'L', '2018-01-26', 'VII', 'user2.jpg'),
('121218', 'Rian', 'L', '2018-01-26', 'VII', 'user3.jpg'),
('121219', 'Naus', 'L', '2018-01-26', 'VII', 'user4.jpg'),
('121220', 'Tole', 'L', '2018-01-26', 'VII', 'user5.jpg'),
('121223', 'Sela', 'P', '2018-01-26', 'VII', 'sela.jpg'),
('121224', 'Nova', 'P', '2018-01-26', 'VII', 'nova.jpg'),
('121225', 'Niken', 'P', '2018-01-26', 'VII', ''),
('121228', 'Apri', 'L', '2018-01-26', 'VII', 'apri.jpg'),
('121229', 'Akila', 'L', '2018-01-26', 'VII', 'akila.jpg'),
('121230', 'Bimo', 'L', '2001-01-26', 'VII', 'bimo.jpg'),
('121277', 'yoga', 'L', '2000-07-08', 'VII', 'yoga.jpg'),
('121299', 'Yulidar Maulana', 'L', '2000-07-05', 'VII', 'yulidar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `pengarang` varchar(50) DEFAULT NULL,
  `klasifikasi` varchar(100) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `judul`, `pengarang`, `klasifikasi`, `image`) VALUES
('7611', 'Dseain Kreatif Dengan Adobe Potoshop', 'Muhammad Godc', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'dseain-kreatif-dengan-adobe-potoshop.jpg'),
('7706', 'Membuat Website Portal Berita Dengan Laravel', 'Agusasaputra', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'membuat-website-portal-berita-dengan-laravel.jpg'),
('7707', 'Trik seo & Security CodeIgniter', 'Anhar', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'trik-seo--security-codeigniter1.jpg'),
('7711', 'CSS & HTML Web Design', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'css--html-web-design.jpg'),
('7712', 'HTML, CSS & JavaScript', 'Lukmanul Hakim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'html-css--javascript.jpg'),
('7714', 'Seminggu Belajar Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been t', 'seminggu-belajar-laravel.JPG'),
('7715', 'Menyelami Framework Laravel', 'Rahmat Awaludin', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been&n', 'menyelami-framework-laravel.JPG'),
('7723', 'Computer Graphic Design', 'Hendi Hendratman', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'computer-graphic-design1.jpg'),
('7726', 'Responsive Web Design With Bootstrap', 'Panji Asmoro', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'responsive-web-design-with-bootstrap.jpg'),
('7745', 'PHP Advanced', 'Agussalim', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>', 'php-advanced1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `tgl_pengembalian` date DEFAULT NULL,
  `denda` varchar(2) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_transaksi`, `tgl_pengembalian`, `denda`, `nominal`, `id_petugas`) VALUES
('20180411001', '2018-04-19', 'Y', 10000, 7),
('20180417004', '2018-04-19', 'N', 0, 7),
('20180411002', '2018-04-21', 'Y', 10000, 7),
('20200704005', '2020-07-09', 'N', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `full_name`, `password`) VALUES
(8, 'admin', 'Admin Perpus', '$2y$05$0RfFGKdD.I9/9SRZd9../.kIQg7pwgDxhICT0t1aPZh29Ia2oRA3u'),
(9, 'yulidar', 'Yulidar Maulana Ivan Saputra', '$2y$05$RrjNNdxDq6iJY/sGBP0Pr.QB1egFE/b2GJBeYv8/Ct5OX9HJ/nMiq'),
(10, 'arif', 'Arif Eko Fitrianto', '$2y$05$I/r1gbsk.r6HchB5xD4gJ.J.ainOm1IJ34rZBsj0KExk5D.abKyAO'),
(11, 'mahdarul', 'Mahdarul Adi Laksono', '$2y$05$puHHaZOwQfpv8CASCjUz4emAql.5N8Sg/4lKLJSv/5Ecc9vTdmmii');

-- --------------------------------------------------------

--
-- Table structure for table `tmp`
--

CREATE TABLE `tmp` (
  `kode_buku` varchar(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(12) DEFAULT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `kode_buku` varchar(5) DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `nis`, `kode_buku`, `tanggal_pinjam`, `tanggal_kembali`, `status`, `id_petugas`) VALUES
('20180411001', '121221', '7706', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411001', '121221', '7723', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411002', '121210', '7726', '2018-04-11', '2018-04-18', 'Y', 7),
('20180411003', '121217', '7706', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7711', '2018-04-11', '2018-04-18', 'N', 7),
('20180411003', '121217', '7715', '2018-04-11', '2018-04-18', 'N', 7),
('20180417004', '121209', '7611', '2018-04-17', '2018-04-24', 'Y', 7),
('20200704005', '121209', '7714', '2020-07-04', '2020-07-11', 'Y', 8),
('20200704005', '121209', '7706', '2020-07-04', '2020-07-11', 'Y', 8),
('20200705006', '121209', '7745', '2020-07-05', '2020-07-12', 'N', 9),
('20200705006', '121209', '7706', '2020-07-05', '2020-07-12', 'N', 9),
('20200709007', '121210', '7706', '2020-07-09', '2020-07-16', 'N', 8),
('20200709007', '121210', '7712', '2020-07-09', '2020-07-16', 'N', 8),
('20200711008', '121208', '7712', '2020-07-11', '2020-07-18', 'N', 9),
('20200712009', '121211', '7611', '2020-07-12', '2020-07-19', 'N', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
