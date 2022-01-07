
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int triggered; int idx; } ;
struct TYPE_5__ {int type; char const* name; char const* short_description; char const* group; char const* parent_group; double min; double max; float step; int enforce_minrange; int enforce_maxrange; int dont_use_enum_idx_representation; TYPE_1__ cmd_trigger; int * rounding_fraction; int browser_selection_type; scalar_t__ bind_type; int * get_string_representation; int * action_select; int * action_ok; int * action_cancel; int * action_down; int * action_up; int * action_right; int * action_left; int * action_start; int * read_handler; int * change_handler; scalar_t__ free_flags; scalar_t__ flags; scalar_t__ offset_by; scalar_t__ index_offset; scalar_t__ index; int * subgroup; int * values; scalar_t__ size; int enum_idx; } ;
typedef TYPE_2__ rarch_setting_t ;
typedef enum setting_type { ____Placeholder_setting_type } setting_type ;


 int CMD_EVENT_NONE ;
 int MSG_UNKNOWN ;
 int ST_NONE ;
 int setting_get_string_representation_default ;

__attribute__((used)) static rarch_setting_t setting_subgroup_setting(enum setting_type type,
      const char* name, const char *parent_name, const char *parent_group,
      bool dont_use_enum_idx)
{
   rarch_setting_t result;

   result.enum_idx = MSG_UNKNOWN;
   result.type = type;

   result.size = 0;

   result.name = name;
   result.short_description = name;
   result.group = parent_name;
   result.parent_group = parent_group;
   result.values = ((void*)0);
   result.subgroup = ((void*)0);

   result.index = 0;
   result.index_offset = 0;
   result.offset_by = 0;

   result.min = 0.0;
   result.max = 0.0;

   result.flags = 0;
   result.free_flags = 0;

   result.change_handler = ((void*)0);
   result.read_handler = ((void*)0);
   result.action_start = ((void*)0);
   result.action_left = ((void*)0);
   result.action_right = ((void*)0);
   result.action_up = ((void*)0);
   result.action_down = ((void*)0);
   result.action_cancel = ((void*)0);
   result.action_ok = ((void*)0);
   result.action_select = ((void*)0);
   result.get_string_representation = &setting_get_string_representation_default;

   result.bind_type = 0;
   result.browser_selection_type = ST_NONE;
   result.step = 0.0f;
   result.rounding_fraction = ((void*)0);
   result.enforce_minrange = 0;
   result.enforce_maxrange = 0;

   result.cmd_trigger.idx = CMD_EVENT_NONE;
   result.cmd_trigger.triggered = 0;

   result.dont_use_enum_idx_representation = dont_use_enum_idx;

   return result;
}
