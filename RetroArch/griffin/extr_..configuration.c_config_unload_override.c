
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_LOG (char*) ;
 int RARCH_OVERRIDE_SETTING_SAVE_PATH ;
 int RARCH_OVERRIDE_SETTING_STATE_PATH ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CONFIG_APPEND ;
 int config_get_ptr () ;
 int config_load_file (int ,int ,int ) ;
 int global_get_ptr () ;
 int path_clear (int ) ;
 int path_get (int ) ;
 int retroarch_override_setting_set (int ,int *) ;
 int retroarch_override_setting_unset (int ,int *) ;

bool config_unload_override(void)
{
   path_clear(RARCH_PATH_CONFIG_APPEND);


   retroarch_override_setting_unset(RARCH_OVERRIDE_SETTING_STATE_PATH, ((void*)0));
   retroarch_override_setting_unset(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0));

   if (!config_load_file(global_get_ptr(),
            path_get(RARCH_PATH_CONFIG), config_get_ptr()))
      return 0;

   RARCH_LOG("[Overrides] configuration overrides unloaded, original configuration restored.\n");


   retroarch_override_setting_set(RARCH_OVERRIDE_SETTING_STATE_PATH, ((void*)0));
   retroarch_override_setting_set(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0));

   return 1;
}
