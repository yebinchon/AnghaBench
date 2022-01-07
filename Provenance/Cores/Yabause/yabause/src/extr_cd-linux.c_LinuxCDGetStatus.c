
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDROM_DRIVE_STATUS ;
 int CDSL_CURRENT ;



 int hCDROM ;
 int ioctl (int ,int ,int ) ;

__attribute__((used)) static int LinuxCDGetStatus(void) {






 int ret = ioctl(hCDROM, CDROM_DRIVE_STATUS, CDSL_CURRENT);
 switch(ret) {
  case 130:
   return 0;
  case 129:
   return 2;
  case 128:
   return 3;
 }


 return 2;
}
