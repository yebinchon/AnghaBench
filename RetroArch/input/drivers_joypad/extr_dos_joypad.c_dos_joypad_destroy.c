
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int unhook_keyb_int () ;

__attribute__((used)) static void dos_joypad_destroy(void)
{
   unhook_keyb_int();
}
