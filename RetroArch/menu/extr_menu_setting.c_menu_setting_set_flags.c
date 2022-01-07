
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int FILE_TYPE_PATH ;
 int MENU_SETTING_ACTION ;
 int MENU_SETTING_GROUP ;
 int MENU_SETTING_STRING_OPTIONS ;
 int MENU_SETTING_SUBGROUP ;





 int setting_get_type (int *) ;

int menu_setting_set_flags(rarch_setting_t *setting)
{
   if (!setting)
      return 0;

   switch (setting_get_type(setting))
   {
      case 129:
         return MENU_SETTING_STRING_OPTIONS;
      case 132:
         return MENU_SETTING_ACTION;
      case 130:
         return FILE_TYPE_PATH;
      case 131:
         return MENU_SETTING_GROUP;
      case 128:
         return MENU_SETTING_SUBGROUP;
      default:
         break;
   }

   return 0;
}
