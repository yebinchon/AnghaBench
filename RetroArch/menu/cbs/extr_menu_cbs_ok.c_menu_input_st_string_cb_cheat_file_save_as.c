
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int path_cheat_database; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
typedef int rarch_setting_t ;


 int cheat_manager_save (char const*,int ,int) ;
 TYPE_2__* config_get_ptr () ;
 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_label_buffer () ;
 int * menu_setting_find (char const*) ;
 int menu_setting_generic (int *,int) ;
 int setting_set_with_string_representation (int *,char const*) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static void menu_input_st_string_cb_cheat_file_save_as(
      void *userdata, const char *str)
{
   if (str && *str)
   {
      rarch_setting_t *setting = ((void*)0);
      settings_t *settings = config_get_ptr();
      const char *label = menu_input_dialog_get_label_buffer();

      if (!string_is_empty(label))
         setting = menu_setting_find(label);

      if (setting)
      {
         setting_set_with_string_representation(setting, str);
         menu_setting_generic(setting, 0);
      }
      else if (!string_is_empty(label))
         cheat_manager_save(str, settings->paths.path_cheat_database,0);
   }

   menu_input_dialog_end();
}
