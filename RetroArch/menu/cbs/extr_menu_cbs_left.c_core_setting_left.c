
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int RARCH_CTL_CORE_OPTION_PREV ;
 int rarch_ctl (int ,unsigned int*) ;

__attribute__((used)) static int core_setting_left(unsigned type, const char *label,
      bool wraparound)
{
   unsigned idx = type - MENU_SETTINGS_CORE_OPTION_START;

   rarch_ctl(RARCH_CTL_CORE_OPTION_PREV, &idx);

   return 0;
}
