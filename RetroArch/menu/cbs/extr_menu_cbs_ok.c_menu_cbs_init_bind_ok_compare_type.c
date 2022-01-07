
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_OK (TYPE_1__*,int *) ;
 int FILEBROWSER_SCAN_FILE ;
 int MENU_LABEL_AUDIO_DSP_PLUGIN ;
 int MENU_LABEL_CHEAT_FILE_LOAD_APPEND ;
 int MENU_LABEL_PLAYLISTS_TAB ;
 int MENU_LABEL_RDB_ENTRY_START_CONTENT ;


 int MENU_LABEL_VIDEO_FILTER ;
 int MENU_LABEL_VIDEO_FONT_PATH ;
 int MENU_LABEL_XMB_FONT ;


 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_LOOPED_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_LOOPED_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_SEQUENTIAL_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_PLAY_SEQUENTIAL_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_REMOVE_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_REMOVE_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_STOP_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_ACTIONS_STOP_END ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_BEGIN ;
 unsigned int MENU_SETTINGS_AUDIO_MIXER_STREAM_END ;
 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 unsigned int MENU_SETTINGS_CHEAT_END ;
 unsigned int MENU_SETTINGS_CHEEVOS_START ;


 unsigned int MENU_SETTINGS_CORE_OPTION_START ;
 unsigned int MENU_SETTINGS_CUSTOM_BIND ;
 unsigned int MENU_SETTINGS_CUSTOM_BIND_KEYBOARD ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PARAMETER_LAST ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_0 ;
 unsigned int MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST ;
 unsigned int MENU_SET_CDROM_INFO ;
 unsigned int MENU_SET_CDROM_LIST ;
 unsigned int MENU_SET_LOAD_CDROM_LIST ;






 int * action_ok_cdrom_info_list ;
 int * action_ok_cheat ;
 int * action_ok_cheat_file_load ;
 int * action_ok_cheat_file_load_append ;
 int * action_ok_compressed_archive_push ;
 int * action_ok_compressed_archive_push_detect_core ;
 int * action_ok_config_load ;
 int * action_ok_core_content_download ;
 int * action_ok_core_content_thumbnails ;
 int * action_ok_core_deferred_set ;
 int * action_ok_core_option_dropdown_list ;
 int * action_ok_core_updater_download ;
 int * action_ok_cursor_manager_list ;
 int * action_ok_database_manager_list ;
 int * action_ok_deferred_list_stub ;
 int * action_ok_directory_push ;
 int * action_ok_disk_cycle_tray_status ;
 int * action_ok_disk_image_append ;
 int * action_ok_download_url ;
 int * action_ok_dump_cdrom ;
 int * action_ok_file_load ;
 int * action_ok_file_load_ffmpeg ;
 int * action_ok_file_load_imageviewer ;
 int * action_ok_file_load_music ;
 int * action_ok_file_load_with_detect_core ;
 int * action_ok_file_load_with_detect_core_carchive ;
 int * action_ok_lakka_download ;
 int * action_ok_load_cdrom ;
 int * action_ok_load_core ;
 int * action_ok_load_core_deferred ;
 int * action_ok_lookup_setting ;
 int * action_ok_menu_wallpaper_load ;
 int * action_ok_mixer_stream_action_play ;
 int * action_ok_mixer_stream_action_play_looped ;
 int * action_ok_mixer_stream_action_play_sequential ;
 int * action_ok_mixer_stream_action_remove ;
 int * action_ok_mixer_stream_action_stop ;
 int * action_ok_mixer_stream_actions ;
 int * action_ok_netplay_lan_scan ;
 int * action_ok_option_create ;
 int * action_ok_parent_directory_push ;
 int * action_ok_path_scan_directory ;
 int * action_ok_path_use_directory ;
 int * action_ok_pl_content_thumbnails ;
 int * action_ok_playlist_collection ;
 int * action_ok_playlist_entry ;
 int * action_ok_playlist_entry_collection ;
 int * action_ok_playlist_entry_start_content ;
 int * action_ok_push_default ;
 int * action_ok_push_dropdown_item ;
 int * action_ok_push_dropdown_item_playlist_default_core ;
 int * action_ok_push_dropdown_item_playlist_label_display_mode ;
 int * action_ok_push_dropdown_item_playlist_left_thumbnail_mode ;
 int * action_ok_push_dropdown_item_playlist_right_thumbnail_mode ;
 int * action_ok_push_dropdown_item_resolution ;
 int * action_ok_push_dropdown_setting_core_options_item ;
 int * action_ok_push_dropdown_setting_core_options_item_special ;
 int * action_ok_push_dropdown_setting_float_item ;
 int * action_ok_push_dropdown_setting_float_item_special ;
 int * action_ok_push_dropdown_setting_int_item ;
 int * action_ok_push_dropdown_setting_int_item_special ;
 int * action_ok_push_dropdown_setting_string_options_item ;
 int * action_ok_push_dropdown_setting_string_options_item_special ;
 int * action_ok_push_dropdown_setting_uint_item ;
 int * action_ok_push_dropdown_setting_uint_item_special ;
 int * action_ok_push_generic_list ;
 int * action_ok_push_random_dir ;
 int * action_ok_rdb_entry ;
 int * action_ok_record_configfile_load ;
 int * action_ok_remap_file_load ;
 int * action_ok_rgui_menu_theme_preset_load ;
 int * action_ok_rpl_entry ;
 int * action_ok_scan_file ;
 int * action_ok_set_path ;
 int * action_ok_set_path_audiofilter ;
 int * action_ok_set_path_overlay ;
 int * action_ok_set_path_video_layout ;
 int * action_ok_set_path_videofilter ;
 int * action_ok_set_switch_backlight ;
 int * action_ok_set_switch_cpu_profile ;
 int * action_ok_set_switch_gpu_profile ;
 int * action_ok_shader_pass_load ;
 int * action_ok_shader_preset_load ;
 int * action_ok_sideload_core ;
 int * action_ok_stream_configfile_load ;
 int * action_ok_subsystem_add ;
 int * action_ok_thumbnails_updater_download ;
 int * action_ok_wifi ;
 int filebrowser_get_type () ;

__attribute__((used)) static int menu_cbs_init_bind_ok_compare_type(menu_file_list_cbs_t *cbs,
      uint32_t label_hash, uint32_t menu_label_hash, unsigned type)
{
   if (type == MENU_SET_CDROM_LIST)
   {
      BIND_ACTION_OK(cbs, action_ok_dump_cdrom);
   }
   else if (type == MENU_SET_CDROM_INFO)
   {
      BIND_ACTION_OK(cbs, action_ok_cdrom_info_list);
   }
   else if (type == MENU_SET_LOAD_CDROM_LIST)
   {
      BIND_ACTION_OK(cbs, action_ok_load_cdrom);
   }
   else if (type == MENU_SETTINGS_CUSTOM_BIND_KEYBOARD ||
         type == MENU_SETTINGS_CUSTOM_BIND)
   {
      BIND_ACTION_OK(cbs, action_ok_lookup_setting);
   }
   else if (type >= MENU_SETTINGS_SHADER_PARAMETER_0
         && type <= MENU_SETTINGS_SHADER_PARAMETER_LAST)
   {
      BIND_ACTION_OK(cbs, ((void*)0));
   }
   else if (type >= MENU_SETTINGS_SHADER_PRESET_PARAMETER_0
         && type <= MENU_SETTINGS_SHADER_PRESET_PARAMETER_LAST)
   {
      BIND_ACTION_OK(cbs, ((void*)0));
   }
   else if (type >= MENU_SETTINGS_CHEAT_BEGIN
         && type <= MENU_SETTINGS_CHEAT_END)
   {
      BIND_ACTION_OK(cbs, action_ok_cheat);
   }
   else if ((type >= MENU_SETTINGS_CORE_OPTION_START) &&
            (type < MENU_SETTINGS_CHEEVOS_START))
   {
      BIND_ACTION_OK(cbs, action_ok_core_option_dropdown_list);
   }
   else
   {
      switch (type)
      {
         case 145:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_core_options_item);
            break;
         case 139:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_string_options_item);
            break;
         case 141:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_int_item);
            break;
         case 143:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_float_item);
            break;
         case 137:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_uint_item);
            break;
         case 144:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_core_options_item_special);
            break;
         case 138:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_string_options_item_special);
            break;
         case 140:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_int_item_special);
            break;
         case 142:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_float_item_special);
            break;
         case 136:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_setting_uint_item_special);
            break;
         case 151:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item);
            break;
         case 146:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item_resolution);
            break;
         case 150:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item_playlist_default_core);
            break;
         case 149:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item_playlist_label_display_mode);
            break;
         case 147:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item_playlist_right_thumbnail_mode);
            break;
         case 148:
            BIND_ACTION_OK(cbs, action_ok_push_dropdown_item_playlist_left_thumbnail_mode);
            break;
         case 152:
            BIND_ACTION_OK(cbs, action_ok_push_default);
            break;
         case 188:
            if (label_hash == MENU_LABEL_PLAYLISTS_TAB)
            {
               BIND_ACTION_OK(cbs, action_ok_playlist_entry_collection);
            }
            else if (label_hash == MENU_LABEL_RDB_ENTRY_START_CONTENT)
            {
               BIND_ACTION_OK(cbs, action_ok_playlist_entry_start_content);
            }
            else
            {
               BIND_ACTION_OK(cbs, action_ok_playlist_entry);
            }
            break;
         case 182:
            BIND_ACTION_OK(cbs, action_ok_rpl_entry);
            break;
         case 189:
            BIND_ACTION_OK(cbs, action_ok_playlist_collection);
            break;
         case 211:
            BIND_ACTION_OK(cbs, action_ok_push_generic_list);
            break;
         case 213:
            if (menu_label_hash == MENU_LABEL_CHEAT_FILE_LOAD_APPEND)
            {
               BIND_ACTION_OK(cbs, action_ok_cheat_file_load_append);
            }
            else
            {
               BIND_ACTION_OK(cbs, action_ok_cheat_file_load);
            }
            break;
         case 185:
            BIND_ACTION_OK(cbs, action_ok_record_configfile_load);
            break;
         case 178:
            BIND_ACTION_OK(cbs, action_ok_stream_configfile_load);
            break;
         case 183:
            BIND_ACTION_OK(cbs, action_ok_rgui_menu_theme_preset_load);
            break;
         case 184:
            BIND_ACTION_OK(cbs, action_ok_remap_file_load);
            break;
         case 179:




            break;
         case 180:




            break;
         case 197:

            BIND_ACTION_OK(cbs, action_ok_menu_wallpaper_load);
            break;
         case 177:
            BIND_ACTION_OK(cbs, action_ok_path_use_directory);
            break;





         case 212:
            BIND_ACTION_OK(cbs, action_ok_config_load);
            break;
         case 191:
            BIND_ACTION_OK(cbs, action_ok_parent_directory_push);
            break;
         case 208:
            if (cbs->enum_idx != 128
                  || menu_label_hash == 161
                  || menu_label_hash == 157
                  || menu_label_hash == MENU_LABEL_VIDEO_FONT_PATH
                  || menu_label_hash == MENU_LABEL_XMB_FONT
                  || menu_label_hash == MENU_LABEL_AUDIO_DSP_PLUGIN
                  || menu_label_hash == MENU_LABEL_VIDEO_FILTER)
               BIND_ACTION_OK(cbs, action_ok_directory_push);
            else
               BIND_ACTION_OK(cbs, action_ok_push_random_dir);
            break;
         case 214:
            if (filebrowser_get_type() == FILEBROWSER_SCAN_FILE)
            {



            }
            else
            {
               switch (menu_label_hash)
               {
                  case 159:
                     BIND_ACTION_OK(cbs, action_ok_compressed_archive_push_detect_core);
                     break;
                  default:
                     BIND_ACTION_OK(cbs, action_ok_compressed_archive_push);
                     break;
               }
            }
            break;
         case 210:
            if (cbs->enum_idx != 128)
            {
               switch (cbs->enum_idx)
               {
                  case 174:
                     BIND_ACTION_OK(cbs, action_ok_deferred_list_stub);
                     break;
                  case 128:
                  default:
                     break;
               }
            }
            else
            {
               switch (menu_label_hash)
               {
                  case 164:
                     BIND_ACTION_OK(cbs, action_ok_load_core_deferred);
                     break;
                  case 163:
                     BIND_ACTION_OK(cbs, action_ok_core_deferred_set);
                     break;
                  case 168:
                     BIND_ACTION_OK(cbs, action_ok_load_core);
                     break;
                  case 158:
                     BIND_ACTION_OK(cbs, action_ok_sideload_core);
                     break;
               }
            }
            break;
         case 205:
            BIND_ACTION_OK(cbs, action_ok_core_content_download);
            break;
         case 200:
            BIND_ACTION_OK(cbs, action_ok_core_content_thumbnails);
            break;
         case 202:
            BIND_ACTION_OK(cbs, action_ok_pl_content_thumbnails);
            break;
         case 206:
            BIND_ACTION_OK(cbs, action_ok_core_updater_download);
            break;
         case 199:
            BIND_ACTION_OK(cbs, action_ok_download_url);
            break;
         case 201:
            BIND_ACTION_OK(cbs, action_ok_thumbnails_updater_download);
            break;
         case 203:
            BIND_ACTION_OK(cbs, action_ok_lakka_download);
            break;
         case 204:
            break;
         case 187:
            switch (menu_label_hash)
            {
               case 162:
                  BIND_ACTION_OK(cbs, action_ok_deferred_list_stub);
                  break;
               case 166:
               case 130:
                  BIND_ACTION_OK(cbs, action_ok_database_manager_list);
                  break;
            }
            break;
         case 186:
            BIND_ACTION_OK(cbs, action_ok_rdb_entry);
            break;
         case 129:
            BIND_ACTION_OK(cbs, action_ok_wifi);
            break;
         case 156:
            BIND_ACTION_OK(cbs, action_ok_netplay_lan_scan);
            break;
         case 209:
            switch (menu_label_hash)
            {
               case 162:
                  BIND_ACTION_OK(cbs, action_ok_deferred_list_stub);
                  break;
               case 167:
                  BIND_ACTION_OK(cbs, action_ok_cursor_manager_list);
                  break;
            }
            break;
         case 176:
            BIND_ACTION_OK(cbs, action_ok_set_path_videofilter);
            break;
         case 198:
            BIND_ACTION_OK(cbs, action_ok_set_path);
            break;
         case 192:
            BIND_ACTION_OK(cbs, action_ok_set_path_overlay);
            break;





         case 215:
            BIND_ACTION_OK(cbs, action_ok_set_path_audiofilter);
            break;
         case 195:
         case 190:
            if (filebrowser_get_type() == FILEBROWSER_SCAN_FILE)
            {



            }
            else if (cbs->enum_idx != 128)
            {
               switch (cbs->enum_idx)
               {
                  case 171:
                  case 170:
                  case 173:







                     {
                        BIND_ACTION_OK(cbs, action_ok_file_load_with_detect_core);
                     }
                     break;
                  case 172:
                     BIND_ACTION_OK(cbs, action_ok_disk_image_append);
                     break;
                  case 169:
                     BIND_ACTION_OK(cbs, action_ok_subsystem_add);
                     break;
                  default:
                     BIND_ACTION_OK(cbs, action_ok_file_load);
                     break;
               }
            }
            else
            {
               switch (menu_label_hash)
               {
                  case 160:
                  case 159:
                  case 165:







                     {
                        BIND_ACTION_OK(cbs, action_ok_file_load_with_detect_core);
                     }
                     break;
                  case 161:
                     BIND_ACTION_OK(cbs, action_ok_disk_image_append);
                     break;
                  case 157:
                     BIND_ACTION_OK(cbs, action_ok_subsystem_add);
                     break;
                  default:
                     BIND_ACTION_OK(cbs, action_ok_file_load);
                     break;
               }
            }
            break;
         case 194:




            break;
         case 193:
            BIND_ACTION_OK(cbs, action_ok_file_load_music);
            break;
         case 196:

            BIND_ACTION_OK(cbs, action_ok_file_load_imageviewer);
            break;
         case 207:
            BIND_ACTION_OK(cbs, action_ok_file_load);
            break;
         case 155:
         case 135:
         case 134:
            BIND_ACTION_OK(cbs, action_ok_push_default);
            break;
         case 154:
            BIND_ACTION_OK(cbs, action_ok_disk_cycle_tray_status);
            break;
         case 153:
            BIND_ACTION_OK(cbs, action_ok_option_create);
            break;
         default:
            return -1;
      }
   }

   return 0;
}
