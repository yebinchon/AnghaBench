
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DSTATUS ;
typedef int BYTE ;





 int MMC_disk_initialize () ;
 int RAM_disk_initialize () ;
 int STA_NOINIT ;
 int USB_disk_initialize () ;

DSTATUS disk_initialize (
 BYTE pdrv
)
{
 DSTATUS stat;
 int result;

 switch (pdrv) {
 case 129 :
  result = RAM_disk_initialize();



  return stat;

 case 130 :
  result = MMC_disk_initialize();



  return stat;

 case 128 :
  result = USB_disk_initialize();



  return stat;
 }
 return STA_NOINIT;
}
