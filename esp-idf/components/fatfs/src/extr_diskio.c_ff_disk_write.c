
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef int BYTE ;





 int MMC_disk_write (int const*,int ,int ) ;
 int RAM_disk_write (int const*,int ,int ) ;
 int RES_PARERR ;
 int USB_disk_write (int const*,int ,int ) ;

DRESULT disk_write (
 BYTE pdrv,
 const BYTE *buff,
 DWORD sector,
 UINT count
)
{
 DRESULT res;
 int result;

 switch (pdrv) {
 case 129 :


  result = RAM_disk_write(buff, sector, count);



  return res;

 case 130 :


  result = MMC_disk_write(buff, sector, count);



  return res;

 case 128 :


  result = USB_disk_write(buff, sector, count);



  return res;
 }

 return RES_PARERR;
}
