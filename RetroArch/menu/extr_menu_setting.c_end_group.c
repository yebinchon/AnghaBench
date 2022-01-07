
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ rarch_setting_info_t ;


 int ST_END_GROUP ;
 int setting_group_setting (int ,int ,char const*) ;

__attribute__((used)) static void end_group(rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      const char *parent_group)
{
   (*list)[list_info->index++] = setting_group_setting (ST_END_GROUP, 0, parent_group);
}
