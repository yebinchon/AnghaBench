
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* name; char* short_description; int (* read_handler ) (TYPE_1__*) ;} ;
typedef TYPE_1__ rarch_setting_t ;


 int MENU_ENTRIES_CTL_SETTINGS_GET ;
 scalar_t__ ST_GROUP ;
 scalar_t__ ST_NONE ;
 int menu_entries_ctl (int ,TYPE_1__**) ;
 scalar_t__ setting_get_type (TYPE_1__*) ;
 scalar_t__ string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,char const*) ;
 int stub1 (TYPE_1__*) ;

rarch_setting_t *menu_setting_find(const char *label)
{
   rarch_setting_t *setting = ((void*)0);
   rarch_setting_t **list = &setting;

   if (!label)
      return ((void*)0);

   menu_entries_ctl(MENU_ENTRIES_CTL_SETTINGS_GET, &setting);

   if (!setting)
      return ((void*)0);

   for (; setting_get_type(setting) != ST_NONE; (*list = *list + 1))
   {
      const char *name = setting->name;
      const char *short_description = setting->short_description;

      if (
            string_is_equal(label, name) &&
            (setting_get_type(setting) <= ST_GROUP))
      {
         if (string_is_empty(short_description))
            break;

         if (setting->read_handler)
            setting->read_handler(setting);

         return setting;
      }
   }

   return ((void*)0);
}
