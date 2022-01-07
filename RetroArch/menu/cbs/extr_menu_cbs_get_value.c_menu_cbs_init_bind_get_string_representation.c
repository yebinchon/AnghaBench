
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int enum_idx; scalar_t__ setting; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_GET_VALUE (TYPE_1__*,int ) ;
 unsigned int MENU_SETTINGS_CHEEVOS_START ;
 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 int MENU_SETTINGS_LAST ;
 int MENU_SETTINGS_NONE ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_LAST ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST ;
 int MSG_UNKNOWN ;
 int RARCH_LOG (char*,int ) ;



 int menu_action_setting_disp_set_label ;
 int menu_action_setting_disp_set_label_achievement_information ;
 int menu_action_setting_disp_set_label_cheevos_locked_entry ;
 int menu_action_setting_disp_set_label_cheevos_unlocked_entry ;
 int menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore ;
 int menu_action_setting_disp_set_label_cheevos_unofficial_entry ;
 int menu_action_setting_disp_set_label_cheevos_unsupported_entry ;
 int menu_action_setting_disp_set_label_core_options ;
 int menu_action_setting_disp_set_label_menu_more ;
 int menu_action_setting_disp_set_label_netplay_mitm_server ;
 int menu_action_setting_disp_set_label_setting_bool ;
 int menu_action_setting_disp_set_label_setting_path ;
 int menu_action_setting_disp_set_label_setting_string ;
 int menu_action_setting_disp_set_label_shader_parameter ;
 int menu_action_setting_disp_set_label_shader_preset_parameter ;
 scalar_t__ menu_cbs_init_bind_get_string_representation_compare_label (TYPE_1__*) ;
 scalar_t__ menu_cbs_init_bind_get_string_representation_compare_type (TYPE_1__*,unsigned int) ;
 int setting_get_type (scalar_t__) ;
 scalar_t__ strstr (char const*,char*) ;

int menu_cbs_init_bind_get_string_representation(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   if (strstr(label, "joypad_index") && strstr(label, "input_player"))
   {
      BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label);
      return 0;
   }






   if (cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case 137:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_cheevos_unlocked_entry);
            return 0;
         case 136:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_cheevos_unlocked_entry_hardcore);
            return 0;
         case 138:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_cheevos_locked_entry);
            return 0;
         case 134:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_cheevos_unsupported_entry);
            return 0;
         case 135:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_cheevos_unofficial_entry);
            return 0;
         case 133:
         case 131:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_menu_more);
            return 0;
         case 140:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_achievement_information);
            return 0;
         case 139:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_achievement_information);
            return 0;
         case 132:




            return 0;
         default:
            break;
      }
   }

   if (cbs->setting)
   {
      switch (setting_get_type(cbs->setting))
      {
         case 130:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_setting_bool);
            return 0;
         case 128:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_setting_string);
            return 0;
         case 129:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_setting_path);
            return 0;
         default:
            break;
      }
   }

   if ((type >= MENU_SETTINGS_CORE_OPTION_START) &&
       (type < MENU_SETTINGS_CHEEVOS_START))
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_core_options);
      return 0;
   }
   if (menu_cbs_init_bind_get_string_representation_compare_label(cbs) == 0)
      return 0;

   if (menu_cbs_init_bind_get_string_representation_compare_type(cbs, type) == 0)
      return 0;

   return -1;
}
