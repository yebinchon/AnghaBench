
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LinuxJoyDeInit (scalar_t__) ;
 int free (scalar_t__) ;
 int joycount ;
 scalar_t__ joysticks ;

void PERLinuxJoyDeInit(void)
{
   int i;

   for(i = 0;i < joycount;i++)
      LinuxJoyDeInit(joysticks + i);

   free(joysticks);
}
