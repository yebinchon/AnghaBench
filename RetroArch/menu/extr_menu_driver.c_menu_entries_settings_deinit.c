
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * menu_entries_list_settings ;
 int menu_setting_free (int *) ;

__attribute__((used)) static void menu_entries_settings_deinit(void)
{
   menu_setting_free(menu_entries_list_settings);
   if (menu_entries_list_settings)
      free(menu_entries_list_settings);
   menu_entries_list_settings = ((void*)0);
}
