
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_SELECT (int *,int ) ;

 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 unsigned int MENU_SETTINGS_CHEAT_END ;
 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_END ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_END ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_LAST ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST ;
 int action_select_cheat ;
 int action_select_input_desc ;
 int action_select_input_desc_kbd ;
 int action_select_path_use_directory ;
 int shader_action_parameter_preset_select ;
 int shader_action_parameter_select ;

__attribute__((used)) static int menu_cbs_init_bind_select_compare_type(
      menu_file_list_cbs_t *cbs, unsigned type)
{
   if (type >= MENU_SETTINGS_CHEAT_BEGIN
         && type <= MENU_SETTINGS_CHEAT_END)
   {
      BIND_ACTION_SELECT(cbs, action_select_cheat);
   }
   else if (type >= MENU_SETTINGS_INPUT_DESC_BEGIN
         && type <= MENU_SETTINGS_INPUT_DESC_END)
   {
      BIND_ACTION_SELECT(cbs, action_select_input_desc);
   }
   else if (type >= MENU_SETTINGS_INPUT_DESC_KBD_BEGIN
         && type <= MENU_SETTINGS_INPUT_DESC_KBD_END)
   {
      BIND_ACTION_SELECT(cbs, action_select_input_desc_kbd);
   }
   else
   {

      switch (type)
      {
         case 128:
            BIND_ACTION_SELECT(cbs, action_select_path_use_directory);
            break;
         default:
            return -1;
      }
   }

   return 0;
}
