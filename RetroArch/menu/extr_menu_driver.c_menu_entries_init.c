
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;


 int MENU_SETTING_CTL_NEW ;
 int * menu_entries_list ;
 int menu_entries_list_deinit () ;
 int menu_entries_list_settings ;
 int menu_entries_settings_deinit () ;
 scalar_t__ menu_list_new () ;
 int menu_setting_ctl (int ,int *) ;

__attribute__((used)) static bool menu_entries_init(void)
{
   if (!(menu_entries_list = (menu_list_t*)menu_list_new()))
      goto error;

   menu_setting_ctl(MENU_SETTING_CTL_NEW, &menu_entries_list_settings);

   if (!menu_entries_list_settings)
      goto error;

   return 1;

error:
   menu_entries_settings_deinit();
   menu_entries_list_deinit();

   return 0;
}
