
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int * action_cancel; int action_start; void* action_select; void* action_ok; } ;
typedef TYPE_1__ rarch_setting_t ;
struct TYPE_6__ {int index; } ;
typedef TYPE_2__ rarch_setting_info_t ;


 unsigned int SD_FLAG_ALLOW_INPUT ;




 void* setting_generic_action_ok_linefeed ;
 int setting_string_action_start_generic ;

__attribute__((used)) static void setting_add_special_callbacks(
      rarch_setting_t **list,
      rarch_setting_info_t *list_info,
      unsigned values)
{
   unsigned idx = list_info->index - 1;

   if (values & SD_FLAG_ALLOW_INPUT)
   {
      (*list)[idx].action_ok = setting_generic_action_ok_linefeed;
      (*list)[idx].action_select = setting_generic_action_ok_linefeed;

      switch ((*list)[idx].type)
      {
         case 130:
         case 128:
            (*list)[idx].action_cancel = ((void*)0);
            break;
         case 131:
            (*list)[idx].action_cancel = ((void*)0);
            break;
         case 129:
            (*list)[idx].action_start = setting_string_action_start_generic;
            (*list)[idx].action_cancel = ((void*)0);
            break;
         default:
            break;
      }
   }
}
