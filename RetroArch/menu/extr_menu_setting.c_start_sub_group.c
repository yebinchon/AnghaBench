
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_7__ {int index; } ;
typedef TYPE_1__ rarch_setting_info_t ;
struct TYPE_8__ {char const* name; } ;
typedef TYPE_2__ rarch_setting_group_info_t ;


 int ST_SUB_GROUP ;
 int setting_subgroup_setting (int ,char const*,char const*,char const*,int) ;
 int settings_list_append (int **,TYPE_1__*) ;

__attribute__((used)) static bool start_sub_group(rarch_setting_t **list,
      rarch_setting_info_t *list_info, const char *name,
      rarch_setting_group_info_t *group_info,
      rarch_setting_group_info_t *subgroup_info,
      const char *parent_group)
{
   subgroup_info->name = name;

   if (!settings_list_append(list, list_info))
      return 0;
   (*list)[list_info->index++] = setting_subgroup_setting (ST_SUB_GROUP,
         name, group_info->name, parent_group, 0);
   return 1;
}
