
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int * menu_setting_find (char const*) ;
 int menu_setting_generic (int *,int) ;
 int setting_set_with_string_representation (int *,char const*) ;

__attribute__((used)) static int set_path_generic(const char *label, const char *action_path)
{
   rarch_setting_t *setting = menu_setting_find(label);

   if (setting)
   {
      setting_set_with_string_representation(
            setting, action_path);
      return menu_setting_generic(setting, 0);
   }

   return 0;
}
