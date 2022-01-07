
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int ui_type; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_14__ {int index; } ;
typedef TYPE_2__ rarch_setting_info_t ;
struct TYPE_15__ {int name; } ;
typedef TYPE_3__ rarch_setting_group_info_t ;
typedef int get_string_representation_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef int change_handler_t ;


 int MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR (TYPE_1__**,TYPE_2__*,int) ;
 int MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX (TYPE_1__**,TYPE_2__*,int) ;
 int ST_UI_TYPE_SIZE_SPINBOX ;
 int msg_hash_to_str (int) ;
 TYPE_1__ setting_size_setting (int ,int ,size_t*,size_t,int ,int ,char const*,int ,int ,int,int ) ;

__attribute__((used)) static void config_size(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      size_t *target,
      enum msg_hash_enums name_enum_idx,
      enum msg_hash_enums SHORT_enum_idx,
      size_t default_value,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler,
   get_string_representation_t string_representation_handler)
{
   (*list)[list_info->index++] = setting_size_setting (
         msg_hash_to_str(name_enum_idx),
         msg_hash_to_str(SHORT_enum_idx),
         target, default_value,
         group_info->name,
         subgroup_info->name, parent_group,
         change_handler, read_handler,
         0, string_representation_handler);
   (*list)[list_info->index - 1].ui_type = ST_UI_TYPE_SIZE_SPINBOX;

   MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_IDX_PTR(list, list_info, name_enum_idx);
   MENU_SETTINGS_LIST_CURRENT_ADD_ENUM_VALUE_IDX(list, list_info, SHORT_enum_idx);
}
