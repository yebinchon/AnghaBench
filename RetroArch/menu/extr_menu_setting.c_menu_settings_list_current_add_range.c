
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; float min; float step; float max; int enforce_minrange; int enforce_maxrange; int flags; int ui_type; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_6__ {int index; } ;
typedef TYPE_2__ rarch_setting_info_t ;


 int SD_FLAG_HAS_RANGE ;
 scalar_t__ ST_FLOAT ;
 int ST_UI_TYPE_FLOAT_SLIDER_AND_SPINBOX ;

__attribute__((used)) static void menu_settings_list_current_add_range(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      float min, float max, float step,
      bool enforce_minrange_enable, bool enforce_maxrange_enable)
{
   unsigned idx = list_info->index - 1;

   if ((*list)[idx].type == ST_FLOAT)
      (*list)[list_info->index - 1].ui_type
                                  = ST_UI_TYPE_FLOAT_SLIDER_AND_SPINBOX;

   (*list)[idx].min = min;
   (*list)[idx].step = step;
   (*list)[idx].max = max;
   (*list)[idx].enforce_minrange = enforce_minrange_enable;
   (*list)[idx].enforce_maxrange = enforce_maxrange_enable;

   (*list)[list_info->index - 1].flags |= SD_FLAG_HAS_RANGE;
}
