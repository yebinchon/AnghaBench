
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LinuxJoyHandleEvents (scalar_t__) ;
 scalar_t__ YabauseExec () ;
 int joycount ;
 scalar_t__ joysticks ;

int PERLinuxJoyHandleEvents(void)
{
   int i;

   for(i = 0;i < joycount;i++)
      LinuxJoyHandleEvents(joysticks + i);


   if ( YabauseExec() != 0 )
   {
      return -1;
   }


   return 0;
}
