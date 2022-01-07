
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_option_manager_t ;


 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int RARCH_CTL_CORE_OPTIONS_LIST_GET ;
 int core_option_manager_set_default (int *,unsigned int) ;
 scalar_t__ rarch_ctl (int ,int **) ;

__attribute__((used)) static int action_start_core_setting(unsigned type,
      const char *label)
{
   unsigned idx = type - MENU_SETTINGS_CORE_OPTION_START;
   core_option_manager_t *coreopts = ((void*)0);

   if (rarch_ctl(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts))
      core_option_manager_set_default(coreopts, idx);

   return 0;
}
