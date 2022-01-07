
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_ERR (char*) ;

__attribute__((used)) static void *nullinput_input_init(const char *joypad_driver)
{
   RARCH_ERR("Using the null input driver. RetroArch will ignore you.");
   return (void*)-1;
}
