
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int FRESULT ;
typedef int DWORD ;
typedef int DSTATUS ;
typedef int BYTE ;


 int CLUSTER_SIZE ;
 int CTRL_SYNC ;
 int FF_MAX_SS ;
 int FR_DISK_ERR ;
 int FR_INVALID_PARAMETER ;
 int FR_NOT_ENOUGH_CORE ;
 int FR_NOT_READY ;
 int FR_OK ;
 int FR_WRITE_PROTECTED ;
 int GET_SECTOR_COUNT ;
 int LEAVE_MKFS (int ) ;
 int MBR_Table ;
 scalar_t__ RES_OK ;
 int STA_NOINIT ;
 int STA_PROTECT ;
 int SUPPORTED_FLASH_SIZE ;
 int SZ_PTE ;
 int disk_initialize (int) ;
 scalar_t__ disk_ioctl (int,int ,int*) ;
 scalar_t__ disk_write (int,int*,int ,int) ;
 int* ff_memalloc (int ) ;
 int mem_set (int*,int ,int ) ;
 int st_dword (int*,int) ;
 int st_word (int*,int) ;

FRESULT f_fdisk (
 BYTE pdrv,
 const DWORD* szt,
 void* work
)
{
 UINT i, n, sz_cyl, tot_cyl, b_cyl, e_cyl, p_cyl;
 BYTE s_hd, e_hd, *p, *buf = (BYTE*)work;
 DSTATUS stat;
 DWORD sz_disk, sz_part, s_part;
 DWORD cluster_size = CLUSTER_SIZE;
 FRESULT res;


 stat = disk_initialize(pdrv);
 if (stat & STA_NOINIT) return FR_NOT_READY;
 if (stat & STA_PROTECT) return FR_WRITE_PROTECTED;
 if (disk_ioctl(pdrv, GET_SECTOR_COUNT, &sz_disk)) return FR_DISK_ERR;

 buf = (BYTE*)work;



 if (!buf) return FR_NOT_ENOUGH_CORE;


 for (n = 16; n < 256 && sz_disk / n / cluster_size > 1024; n *= 2) {
  ;
 }
 if (n == 256) n--;
 if (sz_disk < SUPPORTED_FLASH_SIZE) {
  cluster_size = 1;
  n = sz_disk;
 }
 e_hd = n - 1;
 sz_cyl = cluster_size * n;
 tot_cyl = sz_disk / sz_cyl;


 mem_set(buf, 0, FF_MAX_SS);
 p = buf + MBR_Table; b_cyl = 0;
 for (i = 0; i < 4; i++, p += SZ_PTE) {
  p_cyl = (szt[i] <= 100U) ? (DWORD)tot_cyl * szt[i] / 100 : szt[i] / sz_cyl;
  if (p_cyl == 0) continue;
  s_part = (DWORD)sz_cyl * b_cyl;
  sz_part = (DWORD)sz_cyl * p_cyl;
  if (i == 0) {
   s_hd = 1;
   s_part += cluster_size; sz_part -= cluster_size;
  } else {
   s_hd = 0;
  }
  e_cyl = b_cyl + p_cyl - 1;
  if (e_cyl >= tot_cyl) LEAVE_MKFS(FR_INVALID_PARAMETER);


  p[1] = s_hd;
  p[2] = (BYTE)(((b_cyl >> 2) & 0xC0) | 1);
  p[3] = (BYTE)b_cyl;
  p[4] = 0x07;
  p[5] = e_hd;
  p[6] = (BYTE)(((e_cyl >> 2) & 0xC0) | cluster_size);
  p[7] = (BYTE)e_cyl;
  st_dword(p + 8, s_part);
  st_dword(p + 12, sz_part);


  b_cyl += p_cyl;
 }
 st_word(p, 0xAA55);


 res = (disk_write(pdrv, buf, 0, 1) == RES_OK && disk_ioctl(pdrv, CTRL_SYNC, 0) == RES_OK) ? FR_OK : FR_DISK_ERR;
 LEAVE_MKFS(res);
}
