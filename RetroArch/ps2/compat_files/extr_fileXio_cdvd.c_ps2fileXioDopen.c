
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BootDeviceIDs { ____Placeholder_BootDeviceIDs } BootDeviceIDs ;


 int BOOT_DEVICE_CDFS ;
 int fileXioCDDopen (char const*) ;
 int fileXioDopen (char const*) ;
 int getBootDeviceID (char*) ;

int ps2fileXioDopen(const char *name)
{
   enum BootDeviceIDs deviceID = getBootDeviceID((char *)name);
   int fd = -1;
   if (deviceID == BOOT_DEVICE_CDFS) {
      fd = fileXioCDDopen(name);
   } else {
      fd = fileXioDopen(name);
   }

   return fd;
}
