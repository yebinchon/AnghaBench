
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_6__ {int index; } ;
typedef TYPE_1__ rarch_setting_info_t ;
struct TYPE_7__ {char const* name; } ;
typedef TYPE_2__ rarch_setting_group_info_t ;


 int ST_GROUP ;
 int setting_group_setting (int ,char const*,char const*) ;
 int settings_list_append (int **,TYPE_1__*) ;

__attribute__((used)) static void START_GROUP(rarch_setting_t **list, rarch_setting_info_t *list_info,
      rarch_setting_group_info_t *group_info,
      const char *name, const char *parent_group)
{
   group_info->name = name;
   if (!settings_list_append(list, list_info))
      return;
   (*list)[list_info->index++] = setting_group_setting (ST_GROUP, name, parent_group);
}
