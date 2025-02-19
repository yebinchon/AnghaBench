
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int** input_remap_ids; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {int ** input_desc_btn; } ;
typedef TYPE_3__ rarch_system_info_t ;


 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ;
 int RARCH_CUSTOM_BIND_LIST_END ;
 int RARCH_FIRST_CUSTOM_BIND ;
 unsigned int RARCH_UNMAPPED ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__* runloop_get_system_info () ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static int action_left_input_desc(unsigned type, const char *label,
   bool wraparound)
{
   rarch_system_info_t *system = runloop_get_system_info();
   settings_t *settings = config_get_ptr();
   unsigned btn_idx, user_idx, remap_idx;

   if (!settings || !system)
      return 0;

   user_idx = (type - MENU_SETTINGS_INPUT_DESC_BEGIN) / (RARCH_FIRST_CUSTOM_BIND + 8);
   btn_idx = (type - MENU_SETTINGS_INPUT_DESC_BEGIN) - (RARCH_FIRST_CUSTOM_BIND + 8) * user_idx;

   if (settings->uints.input_remap_ids[user_idx][btn_idx] == RARCH_UNMAPPED)
      settings->uints.input_remap_ids[user_idx][btn_idx] = RARCH_CUSTOM_BIND_LIST_END - 1;

   if (settings->uints.input_remap_ids[user_idx][btn_idx] > 0)
      settings->uints.input_remap_ids[user_idx][btn_idx]--;
   else if (settings->uints.input_remap_ids[user_idx][btn_idx] == 0)
      settings->uints.input_remap_ids[user_idx][btn_idx] = RARCH_UNMAPPED;
   else
      settings->uints.input_remap_ids[user_idx][btn_idx] = RARCH_CUSTOM_BIND_LIST_END - 1;

   remap_idx = settings->uints.input_remap_ids[user_idx][btn_idx];



   if (remap_idx != RARCH_UNMAPPED)
   {
      if ((string_is_empty(system->input_desc_btn[user_idx][remap_idx]) && remap_idx < RARCH_CUSTOM_BIND_LIST_END) )

         action_left_input_desc(type, label, wraparound);
   }

   return 0;
}
