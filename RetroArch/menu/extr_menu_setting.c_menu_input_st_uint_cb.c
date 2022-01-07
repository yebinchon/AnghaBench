
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_label_setting_buffer () ;
 int * menu_setting_find (char const*) ;
 int setting_set_with_string_representation (int *,char const*) ;

__attribute__((used)) static void menu_input_st_uint_cb(void *userdata, const char *str)
{
   if (str && *str)
   {
      const char *label = menu_input_dialog_get_label_setting_buffer();
      rarch_setting_t *setting = menu_setting_find(label);

      setting_set_with_string_representation(setting, str);
   }

   menu_input_dialog_end();
}
