#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enum_idx; scalar_t__ setting; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
#define  MENU_ENUM_LABEL_ACHIEVEMENT_LIST 140 
#define  MENU_ENUM_LABEL_ACHIEVEMENT_LIST_HARDCORE 139 
#define  MENU_ENUM_LABEL_CHEEVOS_LOCKED_ENTRY 138 
#define  MENU_ENUM_LABEL_CHEEVOS_UNLOCKED_ENTRY 137 
#define  MENU_ENUM_LABEL_CHEEVOS_UNLOCKED_ENTRY_HARDCORE 136 
#define  MENU_ENUM_LABEL_CHEEVOS_UNOFFICIAL_ENTRY 135 
#define  MENU_ENUM_LABEL_CHEEVOS_UNSUPPORTED_ENTRY 134 
#define  MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY 133 
#define  MENU_ENUM_LABEL_NETPLAY_MITM_SERVER 132 
#define  MENU_ENUM_LABEL_SYSTEM_INFORMATION 131 
 unsigned int MENU_SETTINGS_CHEEVOS_START ; 
 unsigned int MENU_SETTINGS_CORE_OPTION_START ; 
 int /*<<< orphan*/  MENU_SETTINGS_LAST ; 
 int /*<<< orphan*/  MENU_SETTINGS_NONE ; 
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_0 ; 
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_LAST ; 
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 ; 
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST ; 
 int MSG_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
#define  ST_BOOL 130 
#define  ST_PATH 129 
#define  ST_STRING 128 
 int /*<<< orphan*/  menu_action_setting_disp_set_label ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_achievement_information ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_cheevos_locked_entry ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_cheevos_unlocked_entry ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_cheevos_unofficial_entry ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_cheevos_unsupported_entry ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_core_options ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_menu_more ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_netplay_mitm_server ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_setting_bool ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_setting_path ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_setting_string ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_shader_parameter ; 
 int /*<<< orphan*/  menu_action_setting_disp_set_label_shader_preset_parameter ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,unsigned int) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

int FUNC6(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   if (FUNC5(label, "joypad_index") && FUNC5(label, "input_player"))
   {
      FUNC0(cbs, menu_action_setting_disp_set_label);
      return 0;
   }

#if 0
   RARCH_LOG("MENU_SETTINGS_NONE: %d\n", MENU_SETTINGS_NONE);
   RARCH_LOG("MENU_SETTINGS_LAST: %d\n", MENU_SETTINGS_LAST);
#endif

   if (cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case MENU_ENUM_LABEL_CHEEVOS_UNLOCKED_ENTRY:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_cheevos_unlocked_entry);
            return 0;
         case MENU_ENUM_LABEL_CHEEVOS_UNLOCKED_ENTRY_HARDCORE:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore);
            return 0;
         case MENU_ENUM_LABEL_CHEEVOS_LOCKED_ENTRY:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_cheevos_locked_entry);
            return 0;
         case MENU_ENUM_LABEL_CHEEVOS_UNSUPPORTED_ENTRY:
            FUNC0(cbs,
               menu_action_setting_disp_set_label_cheevos_unsupported_entry);
            return 0;
         case MENU_ENUM_LABEL_CHEEVOS_UNOFFICIAL_ENTRY:
            FUNC0(cbs,
               menu_action_setting_disp_set_label_cheevos_unofficial_entry);
            return 0;
         case MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY:
         case MENU_ENUM_LABEL_SYSTEM_INFORMATION:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_menu_more);
            return 0;
         case MENU_ENUM_LABEL_ACHIEVEMENT_LIST:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_achievement_information);
            return 0;
         case MENU_ENUM_LABEL_ACHIEVEMENT_LIST_HARDCORE:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_achievement_information);
            return 0;
         case MENU_ENUM_LABEL_NETPLAY_MITM_SERVER:
#ifdef HAVE_NETWORKING
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_netplay_mitm_server);
#endif
            return 0;
         default:
            break;
      }
   }

   if (cbs->setting)
   {
      switch (FUNC4(cbs->setting))
      {
         case ST_BOOL:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_setting_bool);
            return 0;
         case ST_STRING:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_setting_string);
            return 0;
         case ST_PATH:
            FUNC0(cbs,
                  menu_action_setting_disp_set_label_setting_path);
            return 0;
         default:
            break;
      }
   }

   if ((type >= MENU_SETTINGS_CORE_OPTION_START) &&
       (type < MENU_SETTINGS_CHEEVOS_START))
   {
      FUNC0(cbs,
         menu_action_setting_disp_set_label_core_options);
      return 0;
   }

#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
   if (type >= MENU_SETTINGS_SHADER_PARAMETER_0
         && type <= MENU_SETTINGS_SHADER_PARAMETER_LAST)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_shader_parameter);
      return 0;
   }
   else if (type >= MENU_SETTINGS_SHADER_PRESET_PARAMETER_0
         && type <= MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_shader_preset_parameter);
      return 0;
   }
#endif

   if (FUNC2(cbs) == 0)
      return 0;

   if (FUNC3(cbs, type) == 0)
      return 0;

   return -1;
}