
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int ui_type; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_16__ {int index; } ;
typedef TYPE_2__ rarch_setting_info_t ;
struct TYPE_17__ {int name; } ;
typedef TYPE_3__ rarch_setting_group_info_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef int change_handler_t ;


 int MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR (TYPE_1__**,TYPE_2__*,int) ;
 int MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX (TYPE_1__**,TYPE_2__*,int) ;
 int SD_FREE_FLAG_VALUES ;
 int SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS (TYPE_1__**,TYPE_2__*,int ) ;
 int ST_STRING_OPTIONS ;
 int ST_UI_TYPE_STRING_COMBOBOX ;
 int msg_hash_to_str (int) ;
 TYPE_1__ setting_string_setting_options (int ,int ,int ,char*,unsigned int,char const*,char*,char const*,int ,int ,char const*,int ,int ,int) ;

__attribute__((used)) static void config_string_options(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      char *target, size_t len,
      enum msg_hash_enums name_enum_idx,
      enum msg_hash_enums SHORT_enum_idx,
      const char *default_value, const char *values,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler)
{
   (*list)[list_info->index++] = setting_string_setting_options(
         ST_STRING_OPTIONS,
         msg_hash_to_str(name_enum_idx),
         msg_hash_to_str(SHORT_enum_idx),
         target, (unsigned)len, default_value, "", values,
         group_info->name, subgroup_info->name, parent_group,
         change_handler, read_handler, 0);
   (*list)[list_info->index - 1].ui_type = ST_UI_TYPE_STRING_COMBOBOX;

   MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(list, list_info, name_enum_idx);
   MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(list, list_info, SHORT_enum_idx);

   SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(list, list_info, SD_FREE_FLAG_VALUES);
}
