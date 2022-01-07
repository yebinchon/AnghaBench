
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enum_idx; char* short_description; int (* read_handler ) (TYPE_1__*) ;} ;
typedef TYPE_1__ rarch_setting_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;


 int MENU_ENTRIES_CTL_SETTINGS_GET ;
 scalar_t__ ST_GROUP ;
 scalar_t__ ST_NONE ;
 int menu_entries_ctl (int ,TYPE_1__**) ;
 scalar_t__ setting_get_type (TYPE_1__*) ;
 scalar_t__ string_is_empty (char const*) ;
 int stub1 (TYPE_1__*) ;

rarch_setting_t *menu_setting_find_enum(enum msg_hash_enums enum_idx)
{
   rarch_setting_t *setting = ((void*)0);
   rarch_setting_t **list = &setting;

   if (enum_idx == 0)
      return ((void*)0);

   menu_entries_ctl(MENU_ENTRIES_CTL_SETTINGS_GET, &setting);

   if (!setting)
      return ((void*)0);
   for (; setting_get_type(setting) != ST_NONE; (*list = *list + 1))
   {
      if ( setting->enum_idx == enum_idx &&
            setting_get_type(setting) <= ST_GROUP)
      {
         const char *short_description = setting->short_description;
         if (string_is_empty(short_description))
            return ((void*)0);

         if (setting->read_handler)
            setting->read_handler(setting);

         return setting;
      }
   }

   return ((void*)0);
}
