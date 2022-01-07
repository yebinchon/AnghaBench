
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_RIGHT (int *,int ) ;
 int MENU_ENUM_LABEL_ADD_TAB ;
 int MENU_ENUM_LABEL_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_HISTORY_TAB ;
 int MENU_ENUM_LABEL_HORIZONTAL_MENU ;
 int MENU_ENUM_LABEL_IMAGES_TAB ;
 int MENU_ENUM_LABEL_MUSIC_TAB ;
 int MENU_ENUM_LABEL_NETPLAY_TAB ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MENU_ENUM_LABEL_VIDEO_TAB ;

 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_END ;
 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 unsigned int MENU_SETTINGS_CHEAT_END ;
 unsigned int MENU_SETTINGS_CHEEVOS_START ;


 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_END ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_END ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_LAST ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST ;


 int action_right_cheat ;
 int action_right_input_desc ;
 int action_right_input_desc_kbd ;
 int action_right_mainmenu ;
 int action_right_scroll ;
 int audio_mixer_stream_volume_right ;
 int core_setting_right ;
 int disk_options_disk_idx_right ;
 int msg_hash_to_str (int ) ;
 int shader_action_parameter_right ;
 int string_is_equal (char const*,int ) ;

__attribute__((used)) static int menu_cbs_init_bind_right_compare_type(menu_file_list_cbs_t *cbs,
      unsigned type, const char *menu_label)
{
   if (type >= MENU_SETTINGS_CHEAT_BEGIN
         && type <= MENU_SETTINGS_CHEAT_END)
   {
      BIND_ACTION_RIGHT(cbs, action_right_cheat);
   }
   else if (type >= MENU_SETTINGS_INPUT_DESC_BEGIN
         && type <= MENU_SETTINGS_INPUT_DESC_END)
   {
      BIND_ACTION_RIGHT(cbs, action_right_input_desc);
   }
   else if (type >= MENU_SETTINGS_INPUT_DESC_KBD_BEGIN
      && type <= MENU_SETTINGS_INPUT_DESC_KBD_END)
   {
      BIND_ACTION_RIGHT(cbs, action_right_input_desc_kbd);
   }
   else if ((type >= MENU_SETTINGS_CORE_OPTION_START) &&
            (type < MENU_SETTINGS_CHEEVOS_START))
   {
      BIND_ACTION_RIGHT(cbs, core_setting_right);
   }
   else
   {
      switch (type)
      {
         case 131:
            BIND_ACTION_RIGHT(cbs, disk_options_disk_idx_right);
            break;
         case 145:
         case 158:
         case 146:
         case 164:
         case 150:
         case 160:
         case 142:
         case 141:
         case 139:
         case 159:
         case 137:
         case 136:
         case 152:
         case 147:



         case 134:
         case 165:
         case 162:
         case 135:
         case 143:
         case 132:
         case 157:
         case 163:
         case 140:
         case 149:
         case 148:
         case 151:
         case 144:
         case 156:
         case 155:
         case 154:
         case 138:
         case 153:
         case 128:
         case 130:
            if ( string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_ADD_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_NETPLAY_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_IMAGES_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_VIDEO_TAB)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
                  string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB))
                  )
            {
               BIND_ACTION_RIGHT(cbs, action_right_mainmenu);
               break;
            }
            BIND_ACTION_RIGHT(cbs, action_right_scroll);
            break;
         case 129:
         case 161:
            BIND_ACTION_RIGHT(cbs, action_right_mainmenu);
            break;
         default:
            return -1;
      }
   }

   return 0;
}
