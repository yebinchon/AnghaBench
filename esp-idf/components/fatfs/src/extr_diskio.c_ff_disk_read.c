
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int DWORD ;
typedef int DRESULT ;
typedef int BYTE ;





 int MMC_disk_read (int*,int ,int ) ;
 int RAM_disk_read (int*,int ,int ) ;
 int RES_PARERR ;
 int USB_disk_read (int*,int ,int ) ;

DRESULT disk_read (
 BYTE pdrv,
 BYTE *buff,
 DWORD sector,
 UINT count
)
{
 DRESULT res;
 int result;

 switch (pdrv) {
 case 129 :


  result = RAM_disk_read(buff, sector, count);



  return res;

 case 130 :


  result = MMC_disk_read(buff, sector, count);



  return res;

 case 128 :


  result = USB_disk_read(buff, sector, count);



  return res;
 }

 return RES_PARERR;
}
