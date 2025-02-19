
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int rarch_setting_t ;
struct TYPE_7__ {int index; } ;
typedef TYPE_1__ rarch_setting_info_t ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ rarch_setting_group_info_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef int change_handler_t ;


 scalar_t__ SD_FLAG_NONE ;
 int SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS (int **,TYPE_1__*,scalar_t__) ;
 int msg_hash_to_str (int) ;
 int setting_bool_setting (char const*,char const*,int*,int,int ,int ,int ,int ,char const*,int ,int ,int) ;

__attribute__((used)) static void config_bool_alt(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      bool *target,
      const char *name, const char *SHORT,
      bool default_value,
      enum msg_hash_enums off_enum_idx,
      enum msg_hash_enums on_enum_idx,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler,
      change_handler_t read_handler,
      uint32_t flags)
{
   (*list)[list_info->index++] = setting_bool_setting(name, SHORT, target,
         default_value,
         msg_hash_to_str(off_enum_idx), msg_hash_to_str(on_enum_idx),
         group_info->name, subgroup_info->name, parent_group,
         change_handler, read_handler, 1);
   if (flags != SD_FLAG_NONE)
      SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS(list, list_info, flags);
}
