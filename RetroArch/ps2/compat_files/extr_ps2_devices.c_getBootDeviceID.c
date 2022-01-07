
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BootDeviceIDs { ____Placeholder_BootDeviceIDs } BootDeviceIDs ;


 int BOOT_DEVICE_CDFS ;
 int BOOT_DEVICE_CDROM ;
 int BOOT_DEVICE_HDD ;
 int BOOT_DEVICE_HDD0 ;
 int BOOT_DEVICE_HOST ;
 int BOOT_DEVICE_HOST0 ;
 int BOOT_DEVICE_HOST1 ;
 int BOOT_DEVICE_HOST2 ;
 int BOOT_DEVICE_HOST3 ;
 int BOOT_DEVICE_HOST4 ;
 int BOOT_DEVICE_HOST5 ;
 int BOOT_DEVICE_HOST6 ;
 int BOOT_DEVICE_HOST7 ;
 int BOOT_DEVICE_HOST8 ;
 int BOOT_DEVICE_HOST9 ;
 int BOOT_DEVICE_MASS ;
 int BOOT_DEVICE_MASS0 ;
 int BOOT_DEVICE_MC0 ;
 int BOOT_DEVICE_MC1 ;
 int BOOT_DEVICE_UNKNOWN ;
 int DEVICE_CDFS ;
 int DEVICE_CDROM ;
 int DEVICE_HDD ;
 int DEVICE_HDD0 ;
 int DEVICE_HOST ;
 int DEVICE_HOST0 ;
 int DEVICE_HOST1 ;
 int DEVICE_HOST2 ;
 int DEVICE_HOST3 ;
 int DEVICE_HOST4 ;
 int DEVICE_HOST5 ;
 int DEVICE_HOST6 ;
 int DEVICE_HOST7 ;
 int DEVICE_HOST8 ;
 int DEVICE_HOST9 ;
 int DEVICE_MASS ;
 int DEVICE_MASS0 ;
 int DEVICE_MC0 ;
 int DEVICE_MC1 ;
 int strncmp (char*,int ,int) ;

enum BootDeviceIDs getBootDeviceID(char *path)
{
   if (!strncmp(path, DEVICE_MC0, 4))
      return BOOT_DEVICE_MC0;
   else if (!strncmp(path, DEVICE_MC1, 4))
      return BOOT_DEVICE_MC1;
   else if (!strncmp(path, DEVICE_CDROM, 7))
      return BOOT_DEVICE_CDROM;
   else if (!strncmp(path, DEVICE_CDFS, 5))
      return BOOT_DEVICE_CDFS;
   else if (!strncmp(path, DEVICE_MASS, 5))
      return BOOT_DEVICE_MASS;
   else if (!strncmp(path, DEVICE_MASS0, 6))
      return BOOT_DEVICE_MASS0;
   else if (!strncmp(path, DEVICE_HDD, 4))
      return BOOT_DEVICE_HDD;
   else if (!strncmp(path, DEVICE_HDD0, 5))
      return BOOT_DEVICE_HDD0;
   else if (!strncmp(path, DEVICE_HOST, 5))
      return BOOT_DEVICE_HOST;
   else if (!strncmp(path, DEVICE_HOST0, 6))
      return BOOT_DEVICE_HOST0;
   else if (!strncmp(path, DEVICE_HOST1, 6))
      return BOOT_DEVICE_HOST1;
   else if (!strncmp(path, DEVICE_HOST2, 6))
      return BOOT_DEVICE_HOST2;
   else if (!strncmp(path, DEVICE_HOST3, 6))
      return BOOT_DEVICE_HOST3;
   else if (!strncmp(path, DEVICE_HOST4, 6))
      return BOOT_DEVICE_HOST4;
   else if (!strncmp(path, DEVICE_HOST5, 6))
      return BOOT_DEVICE_HOST5;
   else if (!strncmp(path, DEVICE_HOST6, 6))
      return BOOT_DEVICE_HOST6;
   else if (!strncmp(path, DEVICE_HOST7, 6))
      return BOOT_DEVICE_HOST7;
   else if (!strncmp(path, DEVICE_HOST8, 6))
      return BOOT_DEVICE_HOST8;
   else if (!strncmp(path, DEVICE_HOST9, 6))
      return BOOT_DEVICE_HOST9;
   else
      return BOOT_DEVICE_UNKNOWN;
}
