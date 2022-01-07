
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ rarch_setting_info_t ;


 scalar_t__ realloc (int *,int) ;

__attribute__((used)) static bool settings_list_append_internal(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info)
{
   unsigned new_size = list_info->size * 2;
   rarch_setting_t *list_settings = (rarch_setting_t*)
      realloc(*list, sizeof(rarch_setting_t) * new_size);

   if (!list_settings)
      return 0;
   list_info->size = new_size;
   *list = list_settings;

   return 1;
}
