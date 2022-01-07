
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int menu_input_dialog_end () ;
 char* menu_input_dialog_get_label_setting_buffer () ;
 int * menu_setting_find (char const*) ;
 scalar_t__ setting_get_ptr (int *) ;
 scalar_t__ strtoul (char const*,int *,int) ;

__attribute__((used)) static void menu_input_st_hex_cb(void *userdata, const char *str)
{
   if (str && *str)
   {
      const char *label = menu_input_dialog_get_label_setting_buffer();
      rarch_setting_t *setting = menu_setting_find(label);

      if (setting)
      {
         unsigned *ptr = (unsigned*)setting_get_ptr(setting);
         if (str[0] == '#')
            str++;
         if (ptr)
            *ptr = (unsigned)strtoul(str, ((void*)0), 16);
      }
   }

   menu_input_dialog_end();
}
