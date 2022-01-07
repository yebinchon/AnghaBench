
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int setting_reset_setting (int *) ;

int setting_generic_action_start_default(rarch_setting_t *setting)
{
   if (!setting)
      return -1;

   setting_reset_setting(setting);

   return 0;
}
