
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum BootDeviceIDs { ____Placeholder_BootDeviceIDs } BootDeviceIDs ;


 int fileXioDclose (int) ;
 int fileXioDopen (char*) ;
 int nopdelay () ;
 char* rootDevicePath (int) ;

bool waitUntilDeviceIsReady(enum BootDeviceIDs device_id)
{
   int openFile = - 1;
   int retries = 3;
   char *rootDevice = rootDevicePath(device_id);

   while(openFile < 0 && retries > 0)
   {
      openFile = fileXioDopen(rootDevice);

      nopdelay();
      nopdelay();
      nopdelay();
      nopdelay();
      nopdelay();
      nopdelay();
      nopdelay();
      nopdelay();

      retries--;
   };
   if (openFile > 0) {
      fileXioDclose(openFile);
   }

   return openFile >= 0;
}
