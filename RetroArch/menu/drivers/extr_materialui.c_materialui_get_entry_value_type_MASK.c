#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__* list; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef  TYPE_2__ materialui_handle_t ;
typedef  enum msg_file_type { ____Placeholder_msg_file_type } msg_file_type ;
typedef  enum materialui_entry_value_type { ____Placeholder_materialui_entry_value_type } materialui_entry_value_type ;

/* Variables and functions */
#define  FILE_TYPE_COMPRESSED 139 
#define  FILE_TYPE_CORE 138 
#define  FILE_TYPE_CURSOR 137 
#define  FILE_TYPE_DIRECTORY 136 
#define  FILE_TYPE_DIRECT_LOAD 135 
#define  FILE_TYPE_IMAGE 134 
#define  FILE_TYPE_IN_CARCHIVE 133 
#define  FILE_TYPE_MORE 132 
#define  FILE_TYPE_MOVIE 131 
#define  FILE_TYPE_MUSIC 130 
#define  FILE_TYPE_PLAIN 129 
#define  FILE_TYPE_RDB 128 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DISABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ENABLED ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_OFF ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_ON ; 
 unsigned int MENU_SETTING_DROPDOWN_ITEM ; 
 unsigned int MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL ; 
 int MUI_ENTRY_VALUE_CHECKMARK ; 
 int MUI_ENTRY_VALUE_NONE ; 
 int MUI_ENTRY_VALUE_SWITCH_OFF ; 
 int MUI_ENTRY_VALUE_SWITCH_ON ; 
 int MUI_ENTRY_VALUE_TEXT ; 
 size_t MUI_TEXTURE_SWITCH_OFF ; 
 size_t MUI_TEXTURE_SWITCH_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

enum materialui_entry_value_type FUNC3(
      materialui_handle_t *mui,
      const char *entry_value, bool entry_checked,
      unsigned entry_type, enum msg_file_type entry_file_type)
{
   enum materialui_entry_value_type value_type = MUI_ENTRY_VALUE_NONE;

   /* Check entry value string */
   if (!FUNC1(entry_value))
   {
      /* Toggle switch off */
      if (FUNC2(entry_value, FUNC0(MENU_ENUM_LABEL_DISABLED)) ||
          FUNC2(entry_value, FUNC0(MENU_ENUM_LABEL_VALUE_OFF)))
      {
         if (mui->textures.list[MUI_TEXTURE_SWITCH_OFF])
            value_type = MUI_ENTRY_VALUE_SWITCH_OFF;
         else
            value_type = MUI_ENTRY_VALUE_TEXT;
      }
      /* Toggle switch on */
      else if (FUNC2(entry_value, FUNC0(MENU_ENUM_LABEL_ENABLED)) ||
               FUNC2(entry_value, FUNC0(MENU_ENUM_LABEL_VALUE_ON)))
      {
         if (mui->textures.list[MUI_TEXTURE_SWITCH_ON])
            value_type = MUI_ENTRY_VALUE_SWITCH_ON;
         else
            value_type = MUI_ENTRY_VALUE_TEXT;
      }
      /* Normal value text */
      else
      {
         switch (entry_file_type)
         {
            case FILE_TYPE_IN_CARCHIVE:
            case FILE_TYPE_COMPRESSED:
            case FILE_TYPE_MORE:
            case FILE_TYPE_CORE:
            case FILE_TYPE_DIRECT_LOAD:
            case FILE_TYPE_RDB:
            case FILE_TYPE_CURSOR:
            case FILE_TYPE_PLAIN:
            case FILE_TYPE_DIRECTORY:
            case FILE_TYPE_MUSIC:
            case FILE_TYPE_IMAGE:
            case FILE_TYPE_MOVIE:
               break;
            default:
               value_type = MUI_ENTRY_VALUE_TEXT;
               break;
         }
      }
   }

   /* Check whether this is the currently selected item
    * of a drop down list */
   if (entry_checked &&
       ((entry_type >= MENU_SETTING_DROPDOWN_ITEM) &&
        (entry_type <= MENU_SETTING_DROPDOWN_SETTING_UINT_ITEM_SPECIAL)))
      value_type = MUI_ENTRY_VALUE_CHECKMARK;

   return value_type;
}