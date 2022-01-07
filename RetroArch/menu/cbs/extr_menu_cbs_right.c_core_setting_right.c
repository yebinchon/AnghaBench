
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int RARCH_CTL_CORE_OPTION_NEXT ;
 int rarch_ctl (int ,unsigned int*) ;

int core_setting_right(unsigned type, const char *label,
      bool wraparound)
{
   unsigned idx = type - MENU_SETTINGS_CORE_OPTION_START;

   rarch_ctl(RARCH_CTL_CORE_OPTION_NEXT, &idx);

   return 0;
}
