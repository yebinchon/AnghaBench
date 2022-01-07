
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct retro_keybind {int dummy; } ;
typedef int rarch_setting_t ;
struct TYPE_7__ {int index; } ;
typedef TYPE_1__ rarch_setting_info_t ;
struct TYPE_8__ {int name; } ;
typedef TYPE_2__ rarch_setting_group_info_t ;


 int SD_FREE_FLAG_NAME ;
 int SD_FREE_FLAG_SHORT ;
 int SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS (int **,TYPE_1__*,int) ;
 int setting_bind_setting (char const*,char const*,struct retro_keybind*,int ,int ,struct retro_keybind const*,int ,int ,char const*,int) ;

__attribute__((used)) static void config_bind_alt(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      struct retro_keybind *target,
      uint32_t player, uint32_t player_offset,
      const char *name, const char *SHORT,
      const struct retro_keybind *default_value,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group)
{
   (*list)[list_info->index++] = setting_bind_setting(name, SHORT, target,
         player, player_offset, default_value,
         group_info->name, subgroup_info->name, parent_group,
         1);

   SETTINGS_DATA_LIST_CURRENT_ADD_FREE_FLAGS(list, list_info, SD_FREE_FLAG_NAME | SD_FREE_FLAG_SHORT);
}
