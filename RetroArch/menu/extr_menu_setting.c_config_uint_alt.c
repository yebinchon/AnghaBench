
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ui_type; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_10__ {int index; } ;
typedef TYPE_2__ rarch_setting_info_t ;
struct TYPE_11__ {int name; } ;
typedef TYPE_3__ rarch_setting_group_info_t ;
typedef int change_handler_t ;


 int ST_UI_TYPE_UINT_SPINBOX ;
 TYPE_1__ setting_uint_setting (char const*,char const*,unsigned int*,unsigned int,int ,int ,char const*,int ,int ,int) ;

__attribute__((used)) static void config_uint_alt(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      unsigned int *target,
      const char *name, const char *SHORT,
      unsigned int default_value,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group,
      change_handler_t change_handler, change_handler_t read_handler)
{
   (*list)[list_info->index++] = setting_uint_setting(
         name, SHORT, target, default_value,
         group_info->name,
         subgroup_info->name, parent_group, change_handler, read_handler,
         1);
   (*list)[list_info->index - 1].ui_type = ST_UI_TYPE_UINT_SPINBOX;
}
