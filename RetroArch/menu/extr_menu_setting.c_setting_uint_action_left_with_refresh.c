
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;
 int setting_uint_action_left_default (int *,int) ;

int setting_uint_action_left_with_refresh(rarch_setting_t *setting, bool wraparound)
{
   int retval = setting_uint_action_left_default(setting, wraparound);
   bool refresh = 0;

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   menu_driver_ctl(RARCH_MENU_CTL_SET_PREVENT_POPULATE, ((void*)0));

   return retval;

}
