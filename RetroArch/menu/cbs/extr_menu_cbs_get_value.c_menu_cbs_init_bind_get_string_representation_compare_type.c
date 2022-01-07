
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_GET_VALUE (int *,int ) ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_VOLUME_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_END ;
 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 unsigned int MENU_SETTINGS_CHEAT_END ;





 unsigned int MENU_SETTINGS_INPUT_DESC_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_END ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_BEGIN ;
 unsigned int MENU_SETTINGS_INPUT_DESC_KBD_END ;
 unsigned int MENU_SETTINGS_LIBRETRO_PERF_COUNTERS_BEGIN ;
 unsigned int MENU_SETTINGS_LIBRETRO_PERF_COUNTERS_END ;
 unsigned int MENU_SETTINGS_PERF_COUNTERS_BEGIN ;
 unsigned int MENU_SETTINGS_PERF_COUNTERS_END ;
 int RARCH_LOG (char*,unsigned int) ;
 int menu_action_setting_audio_mixer_stream_name ;
 int menu_action_setting_audio_mixer_stream_volume ;
 int menu_action_setting_disp_set_label ;
 int menu_action_setting_disp_set_label_cheat ;
 int menu_action_setting_disp_set_label_cheat_match ;
 int menu_action_setting_disp_set_label_core_option_create ;
 int menu_action_setting_disp_set_label_db_entry ;
 int menu_action_setting_disp_set_label_entry ;
 int menu_action_setting_disp_set_label_entry_url ;
 int menu_action_setting_disp_set_label_input_desc ;
 int menu_action_setting_disp_set_label_input_desc_kbd ;
 int menu_action_setting_disp_set_label_libretro_perf_counters ;
 int menu_action_setting_disp_set_label_menu_disk_index ;
 int menu_action_setting_disp_set_label_menu_file_carchive ;
 int menu_action_setting_disp_set_label_menu_file_cheat ;
 int menu_action_setting_disp_set_label_menu_file_config ;
 int menu_action_setting_disp_set_label_menu_file_core ;
 int menu_action_setting_disp_set_label_menu_file_cursor ;
 int menu_action_setting_disp_set_label_menu_file_directory ;
 int menu_action_setting_disp_set_label_menu_file_filter ;
 int menu_action_setting_disp_set_label_menu_file_font ;
 int menu_action_setting_disp_set_label_menu_file_imageviewer ;
 int menu_action_setting_disp_set_label_menu_file_in_carchive ;
 int menu_action_setting_disp_set_label_menu_file_overlay ;
 int menu_action_setting_disp_set_label_menu_file_parent_directory ;
 int menu_action_setting_disp_set_label_menu_file_plain ;
 int menu_action_setting_disp_set_label_menu_file_rdb ;
 int menu_action_setting_disp_set_label_menu_file_shader ;
 int menu_action_setting_disp_set_label_menu_file_shader_preset ;
 int menu_action_setting_disp_set_label_menu_file_url_core ;
 int menu_action_setting_disp_set_label_menu_file_use_directory ;
 int menu_action_setting_disp_set_label_menu_file_video_layout ;
 int menu_action_setting_disp_set_label_menu_more ;
 int menu_action_setting_disp_set_label_movie ;
 int menu_action_setting_disp_set_label_music ;
 int menu_action_setting_disp_set_label_no_items ;
 int menu_action_setting_disp_set_label_perf_counters ;

__attribute__((used)) static int menu_cbs_init_bind_get_string_representation_compare_type(
      menu_file_list_cbs_t *cbs, unsigned type)
{
   if (type >= MENU_SETTINGS_INPUT_DESC_BEGIN
         && type <= MENU_SETTINGS_INPUT_DESC_END)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_input_desc);
   }
   else if (type >= MENU_SETTINGS_CHEAT_BEGIN
         && type <= MENU_SETTINGS_CHEAT_END)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_cheat);
   }
   else if (type >= MENU_SETTINGS_PERF_COUNTERS_BEGIN
         && type <= MENU_SETTINGS_PERF_COUNTERS_END)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_perf_counters);
   }
   else if (type >= MENU_SETTINGS_LIBRETRO_PERF_COUNTERS_BEGIN
         && type <= MENU_SETTINGS_LIBRETRO_PERF_COUNTERS_END)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_libretro_perf_counters);
   }
   else if (type >= MENU_SETTINGS_INPUT_DESC_KBD_BEGIN
      && type <= MENU_SETTINGS_INPUT_DESC_KBD_END)
   {
      BIND_ACTION_GET_VALUE(cbs,
         menu_action_setting_disp_set_label_input_desc_kbd);
   }
   else
   {
      switch (type)
      {
         case 140:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_core_option_create);
            break;
         case 162:
         case 159:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_core);
            break;
         case 149:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_plain);
            break;
         case 153:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_movie);
            break;
         case 152:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_music);
            break;
         case 156:
         case 155:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_imageviewer);
            break;
         case 145:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_use_directory);
            break;
         case 160:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_directory);
            break;
         case 150:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_parent_directory);
            break;
         case 165:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_carchive);
            break;
         case 151:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_overlay);
            break;






         case 157:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_font);
            break;
         case 147:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_shader);
            break;
         case 146:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_shader_preset);
            break;
         case 163:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_config);
            break;
         case 154:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_in_carchive);
            break;
         case 144:
         case 166:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_filter);
            break;
         case 158:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_url_core);
            break;
         case 148:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_rdb);
            break;
         case 161:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_cursor);
            break;
         case 164:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_file_cheat);
            break;
         case 142:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_cheat_match);
            break;
         case 128:
         case 139:
         case 138:
         case 137:
         case 134:
         case 7:
         case 135:
         case 136:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_more);
            break;
         case 141:
            BIND_ACTION_GET_VALUE(cbs,
               menu_action_setting_disp_set_label_menu_disk_index);
            break;
         case 31:
            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label_db_entry);
            break;
         case 25:
         case 26:
            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label_entry_url);
            break;
         case 131:
         case 130:
         case 132:
         case 133:
         case 129:
            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label_no_items);
            break;
         case 32:
         case 65535:
            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label_entry);
            break;
         default:



            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label);
            break;
      }
   }

   return 0;
}
