
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int LinuxJoyScan (scalar_t__) ;
 int joycount ;
 scalar_t__ joysticks ;

u32 PERLinuxJoyScan(u32 flags) {
   int i;

   for(i = 0;i < joycount;i++)
   {
      int ret = LinuxJoyScan(joysticks + i);
      if (ret != 0) return ret;
   }

   return 0;
}
