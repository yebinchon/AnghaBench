
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dos_joypad_autodetect_add (int ) ;
 int hook_keyb_int () ;

__attribute__((used)) static bool dos_joypad_init(void *data)
{
   hook_keyb_int();

   dos_joypad_autodetect_add(0);

   (void)data;

   return 1;
}
