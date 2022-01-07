
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_label_setting_buffer () ;
 int * menu_setting_find (char const*) ;
 int menu_setting_generic (int *,int) ;
 int setting_set_with_string_representation (int *,char const*) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static void menu_input_st_string_cb(void *userdata, const char *str)
{
   if (str && *str)
   {
      rarch_setting_t *setting = ((void*)0);
      const char *label = menu_input_dialog_get_label_setting_buffer();

      if (!string_is_empty(label))
         setting = menu_setting_find(label);

      if (setting)
      {
         setting_set_with_string_representation(setting, str);
         menu_setting_generic(setting, 0);
      }
   }

   menu_input_dialog_end();
}
