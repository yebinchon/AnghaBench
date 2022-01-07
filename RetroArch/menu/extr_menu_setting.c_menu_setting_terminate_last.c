
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int triggered; int idx; } ;
struct TYPE_5__ {double min; double max; float step; int enforce_minrange; int enforce_maxrange; int dont_use_enum_idx_representation; TYPE_1__ cmd_trigger; int * rounding_fraction; void* browser_selection_type; scalar_t__ bind_type; int * get_string_representation; int * action_select; int * action_ok; int * action_cancel; int * action_down; int * action_up; int * action_right; int * action_left; int * action_start; int * read_handler; int * change_handler; scalar_t__ free_flags; scalar_t__ flags; scalar_t__ index_offset; scalar_t__ index; int * values; int * parent_group; int * subgroup; int * group; int * short_description; int * name; scalar_t__ size; void* type; int enum_idx; } ;
typedef TYPE_2__ rarch_setting_t ;


 int CMD_EVENT_NONE ;
 int MSG_UNKNOWN ;
 void* ST_NONE ;

__attribute__((used)) static void menu_setting_terminate_last(rarch_setting_t *list, unsigned pos)
{
   (*&list)[pos].enum_idx = MSG_UNKNOWN;
   (*&list)[pos].type = ST_NONE;
   (*&list)[pos].size = 0;
   (*&list)[pos].name = ((void*)0);
   (*&list)[pos].short_description = ((void*)0);
   (*&list)[pos].group = ((void*)0);
   (*&list)[pos].subgroup = ((void*)0);
   (*&list)[pos].parent_group = ((void*)0);
   (*&list)[pos].values = ((void*)0);
   (*&list)[pos].index = 0;
   (*&list)[pos].index_offset = 0;
   (*&list)[pos].min = 0.0;
   (*&list)[pos].max = 0.0;
   (*&list)[pos].flags = 0;
   (*&list)[pos].free_flags = 0;
   (*&list)[pos].change_handler = ((void*)0);
   (*&list)[pos].read_handler = ((void*)0);
   (*&list)[pos].action_start = ((void*)0);
   (*&list)[pos].action_left = ((void*)0);
   (*&list)[pos].action_right = ((void*)0);
   (*&list)[pos].action_up = ((void*)0);
   (*&list)[pos].action_down = ((void*)0);
   (*&list)[pos].action_cancel = ((void*)0);
   (*&list)[pos].action_ok = ((void*)0);
   (*&list)[pos].action_select = ((void*)0);
   (*&list)[pos].get_string_representation = ((void*)0);
   (*&list)[pos].bind_type = 0;
   (*&list)[pos].browser_selection_type = ST_NONE;
   (*&list)[pos].step = 0.0f;
   (*&list)[pos].rounding_fraction = ((void*)0);
   (*&list)[pos].enforce_minrange = 0;
   (*&list)[pos].enforce_maxrange = 0;
   (*&list)[pos].cmd_trigger.idx = CMD_EVENT_NONE;
   (*&list)[pos].cmd_trigger.triggered = 0;
   (*&list)[pos].dont_use_enum_idx_representation = 0;
}
