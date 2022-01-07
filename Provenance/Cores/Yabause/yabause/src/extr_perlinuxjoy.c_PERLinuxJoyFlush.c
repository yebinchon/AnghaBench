
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LinuxJoyFlush (scalar_t__) ;
 int joycount ;
 scalar_t__ joysticks ;

void PERLinuxJoyFlush(void) {
   int i;

   for (i = 0;i < joycount;i++)
      LinuxJoyFlush(joysticks + i);
}
