
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* list; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef enum materialui_entry_value_type { ____Placeholder_materialui_entry_value_type } materialui_entry_value_type ;
 int MENU_ENUM_LABEL_DISABLED ;
 int MENU_ENUM_LABEL_ENABLED ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_ON ;
 unsigned int MENU_SETTING_DROPDOWN_ITEM ;
 unsigned int MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL ;
 int MUI_ENTRY_VALUE_CHECKMARK ;
 int MUI_ENTRY_VALUE_NONE ;
 int MUI_ENTRY_VALUE_SWITCH_OFF ;
 int MUI_ENTRY_VALUE_SWITCH_ON ;
 int MUI_ENTRY_VALUE_TEXT ;
 size_t MUI_TEXTURE_SWITCH_OFF ;
 size_t MUI_TEXTURE_SWITCH_ON ;
 int msg_hash_to_str (int ) ;
 int string_is_empty (char const*) ;
 scalar_t__ string_is_equal (char const*,int ) ;

enum materialui_entry_value_type materialui_get_entry_value_type(
      materialui_handle_t *mui,
      const char *entry_value, bool entry_checked,
      unsigned entry_type, enum msg_file_type entry_file_type)
{
   enum materialui_entry_value_type value_type = MUI_ENTRY_VALUE_NONE;


   if (!string_is_empty(entry_value))
   {

      if (string_is_equal(entry_value, msg_hash_to_str(MENU_ENUM_LABEL_DISABLED)) ||
          string_is_equal(entry_value, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_OFF)))
      {
         if (mui->textures.list[MUI_TEXTURE_SWITCH_OFF])
            value_type = MUI_ENTRY_VALUE_SWITCH_OFF;
         else
            value_type = MUI_ENTRY_VALUE_TEXT;
      }

      else if (string_is_equal(entry_value, msg_hash_to_str(MENU_ENUM_LABEL_ENABLED)) ||
               string_is_equal(entry_value, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_ON)))
      {
         if (mui->textures.list[MUI_TEXTURE_SWITCH_ON])
            value_type = MUI_ENTRY_VALUE_SWITCH_ON;
         else
            value_type = MUI_ENTRY_VALUE_TEXT;
      }

      else
      {
         switch (entry_file_type)
         {
            case 133:
            case 139:
            case 132:
            case 138:
            case 135:
            case 128:
            case 137:
            case 129:
            case 136:
            case 130:
            case 134:
            case 131:
               break;
            default:
               value_type = MUI_ENTRY_VALUE_TEXT;
               break;
         }
      }
   }



   if (entry_checked &&
       ((entry_type >= MENU_SETTING_DROPDOWN_ITEM) &&
        (entry_type <= MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL)))
      value_type = MUI_ENTRY_VALUE_CHECKMARK;

   return value_type;
}
