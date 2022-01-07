
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int menu_show_advanced_settings; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_10__ {int flags; char* short_description; char* name; } ;
typedef TYPE_3__ rarch_setting_t ;
typedef int file_list_t ;
typedef enum setting_type { ____Placeholder_setting_type } setting_type ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum menu_displaylist_parse_type { ____Placeholder_menu_displaylist_parse_type } menu_displaylist_parse_type ;


 int MENU_ENUM_LABEL_NO_SETTINGS_FOUND ;
 int MENU_ENUM_LABEL_VALUE_NO_SETTINGS_FOUND ;
 unsigned int MENU_SETTINGS_INPUT_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_END ;
 int SD_FLAG_ADVANCED ;
 int SD_FLAG_LAKKA_ADVANCED ;
 TYPE_2__* config_get_ptr () ;
 int menu_entries_append (int *,char const*,char const*,unsigned int,int ,int ) ;
 int menu_entries_append_enum (int *,char const*,char const*,int,unsigned int,int ,int ) ;
 unsigned int menu_setting_set_flags (TYPE_3__*) ;
 char const* msg_hash_to_str (int) ;
 int setting_get_type (TYPE_3__*) ;

__attribute__((used)) static int menu_displaylist_parse_settings_internal_enum(
      file_list_t *info_list,
      enum menu_displaylist_parse_type parse_type,
      bool add_empty_entry,
      rarch_setting_t *setting,
      unsigned entry_type,
      bool is_enum
      )
{
   static enum setting_type precond_lut[] =
   {
      140,
      134,
      144,
      135,
      128,
      142,
      138,
      143,
      140,
      131,
      133,
      130,
      136,
      141,
      134,
      132,
   };
   enum setting_type precond = precond_lut[parse_type];
   size_t count = 0;
   settings_t *settings = config_get_ptr();
   bool show_advanced_settings = settings->bools.menu_show_advanced_settings;

   if (!setting)
      return -1;

   if (!show_advanced_settings)
   {
      uint64_t flags = setting->flags;
      if (flags & SD_FLAG_ADVANCED)
         goto end;




   }

   for (;;)
   {
      bool time_to_exit = 0;
      const char *short_description = setting->short_description;
      const char *name = setting->name;
      enum setting_type type = setting_get_type(setting);
      rarch_setting_t **list = &setting;

      switch (parse_type)
      {
         case 158:
            switch (type)
            {
               case 137:
               case 140:
               case 129:
               case 139:
                  goto loop;
               default:
                  break;
            }
            break;
         case 159:
         case 153:
            if (type == 137)
               break;
            goto loop;
         case 145:
            break;
         case 160:
         case 151:
         case 146:
         case 149:
         case 157:
         case 156:
         case 154:
         case 152:
         case 148:
         case 150:
         case 155:
         case 147:
            if (type == precond)
               break;
            goto loop;
      }

      if (is_enum)
         menu_entries_append_enum(info_list,
               short_description, name,
               (enum msg_hash_enums)entry_type,
               menu_setting_set_flags(setting), 0, 0);
      else
      {
         if (
               (entry_type >= MENU_SETTINGS_INPUT_BEGIN) &&
               (entry_type < MENU_SETTINGS_INPUT_END)
            )
            entry_type = (unsigned)(MENU_SETTINGS_INPUT_BEGIN + count);
         if (entry_type == 0)
            entry_type = menu_setting_set_flags(setting);

         menu_entries_append(info_list, short_description,
               name, entry_type, 0, 0);
      }
      count++;

loop:
      switch (parse_type)
      {
         case 158:
         case 159:
         case 153:
         case 145:
            if (setting_get_type(setting) == precond)
               time_to_exit = 1;
            break;
         case 157:
         case 154:
         case 152:
         case 156:
         case 151:
         case 146:
         case 149:
         case 150:
         case 155:
         case 148:
         case 147:
         case 160:
            time_to_exit = 1;
            break;
      }

      if (time_to_exit)
         break;
      (*list = *list + 1);
   }

end:
   if (count == 0)
   {
      if (add_empty_entry)
         menu_entries_append_enum(info_list,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NO_SETTINGS_FOUND),
               msg_hash_to_str(MENU_ENUM_LABEL_NO_SETTINGS_FOUND),
               MENU_ENUM_LABEL_NO_SETTINGS_FOUND,
               0, 0, 0);
      return -1;
   }

   return 0;
}
