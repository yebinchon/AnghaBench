
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_USERS ;
 int XInitDevices (int ,int *) ;
 int xdk_joypad_autodetect_add (unsigned int) ;

__attribute__((used)) static bool xdk_joypad_init(void *data)
{



   unsigned autoconf_pad;
   for (autoconf_pad = 0; autoconf_pad < MAX_USERS; autoconf_pad++)
      xdk_joypad_autodetect_add(autoconf_pad);


   (void)data;

   return 1;
}
