
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct config_path_setting {int dummy; } ;
struct TYPE_8__ {int log_dir; int directory_screenshot; int directory_video_layout; int directory_overlay; int directory_menu_config; int directory_menu_content; int directory_audio_filter; int directory_autoconfig; int directory_runtime_log; int directory_playlist; int directory_thumbnails; int directory_dynamic_wallpapers; int directory_assets; int directory_core_assets; int directory_video_filter; int directory_video_shader; int directory_resampler; int directory_input_remapping; int directory_cache; int directory_system; int directory_content_history; int directory_cursor; int path_font; int path_stream_url; int path_stream_config; int path_record_config; int path_video_layout; int path_overlay; int path_content_image_history; int path_content_video_history; int path_content_music_history; int path_content_favorites; int path_content_history; int path_rgui_theme_preset; int path_menu_wallpaper; int path_cheat_database; int path_content_database; int path_libretro_info; int path_core_options; int directory_libretro; int netplay_spectate_password; int netplay_password; int netplay_server; int network_buildbot_assets_url; int network_buildbot_url; int path_audio_dsp_plugin; int path_softfilter_plugin; int username; int kiosk_mode_password; int menu_content_show_settings_password; int path_menu_xmb_font; } ;
struct TYPE_9__ {TYPE_2__ paths; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_7__ {int config_dir; int output_dir; } ;
struct TYPE_10__ {TYPE_1__ record; } ;
typedef TYPE_4__ global_t ;


 int RARCH_DIR_SAVEFILE ;
 int RARCH_DIR_SAVESTATE ;
 int RARCH_PATH_CORE ;
 int SETTING_ARRAY (char*,int ,int,int *,int) ;
 int SETTING_PATH (char*,int ,int,int *,int) ;
 scalar_t__ calloc (int,int) ;
 int dir_get_ptr (int ) ;
 TYPE_4__* global_get_ptr () ;
 int path_get_ptr (int ) ;

__attribute__((used)) static struct config_path_setting *populate_settings_path(settings_t *settings, int *size)
{
   unsigned count = 0;
   struct config_path_setting *tmp = (struct config_path_setting*)calloc(1, (*size + 1) * sizeof(struct config_path_setting));

   if (!tmp)
      return ((void*)0);





   SETTING_PATH("content_show_settings_password", settings->paths.menu_content_show_settings_password, 0, ((void*)0), 1);
   SETTING_PATH("kiosk_mode_password", settings->paths.kiosk_mode_password, 0, ((void*)0), 1);
   SETTING_PATH("netplay_nickname", settings->paths.username, 0, ((void*)0), 1);
   SETTING_PATH("video_filter", settings->paths.path_softfilter_plugin, 0, ((void*)0), 1);
   SETTING_PATH("audio_dsp_plugin", settings->paths.path_audio_dsp_plugin, 0, ((void*)0), 1);
   SETTING_PATH("core_updater_buildbot_cores_url", settings->paths.network_buildbot_url, 0, ((void*)0), 1);
   SETTING_PATH("core_updater_buildbot_assets_url", settings->paths.network_buildbot_assets_url, 0, ((void*)0), 1);





   SETTING_PATH("libretro_directory",
         settings->paths.directory_libretro, 0, ((void*)0), 0);
   SETTING_PATH("core_options_path",
         settings->paths.path_core_options, 0, ((void*)0), 1);
   SETTING_PATH("libretro_info_path",
         settings->paths.path_libretro_info, 0, ((void*)0), 1);
   SETTING_PATH("content_database_path",
         settings->paths.path_content_database, 0, ((void*)0), 1);
   SETTING_PATH("cheat_database_path",
         settings->paths.path_cheat_database, 0, ((void*)0), 1);






   SETTING_PATH("content_history_path",
         settings->paths.path_content_history, 0, ((void*)0), 1);
   SETTING_PATH("content_favorites_path",
         settings->paths.path_content_favorites, 0, ((void*)0), 1);
   SETTING_PATH("content_music_history_path",
         settings->paths.path_content_music_history, 0, ((void*)0), 1);
   SETTING_PATH("content_video_history_path",
         settings->paths.path_content_video_history, 0, ((void*)0), 1);
   SETTING_PATH("content_image_history_path",
         settings->paths.path_content_image_history, 0, ((void*)0), 1);
   SETTING_PATH("video_record_config",
         settings->paths.path_record_config, 0, ((void*)0), 1);
   SETTING_PATH("video_stream_config",
         settings->paths.path_stream_config, 0, ((void*)0), 1);
   SETTING_PATH("video_stream_url",
         settings->paths.path_stream_url, 0, ((void*)0), 1);
   SETTING_PATH("video_font_path",
         settings->paths.path_font, 0, ((void*)0), 1);
   SETTING_PATH("cursor_directory",
         settings->paths.directory_cursor, 0, ((void*)0), 1);
   SETTING_PATH("content_history_dir",
         settings->paths.directory_content_history, 0, ((void*)0), 1);
   SETTING_PATH("screenshot_directory",
         settings->paths.directory_screenshot, 1, ((void*)0), 1);
   SETTING_PATH("system_directory",
         settings->paths.directory_system, 1, ((void*)0), 1);
   SETTING_PATH("cache_directory",
         settings->paths.directory_cache, 0, ((void*)0), 1);
   SETTING_PATH("input_remapping_directory",
         settings->paths.directory_input_remapping, 0, ((void*)0), 1);
   SETTING_PATH("resampler_directory",
         settings->paths.directory_resampler, 0, ((void*)0), 1);
   SETTING_PATH("video_shader_dir",
         settings->paths.directory_video_shader, 1, ((void*)0), 1);
   SETTING_PATH("video_filter_dir",
         settings->paths.directory_video_filter, 1, ((void*)0), 1);
   SETTING_PATH("core_assets_directory",
         settings->paths.directory_core_assets, 1, ((void*)0), 1);
   SETTING_PATH("assets_directory",
         settings->paths.directory_assets, 1, ((void*)0), 1);
   SETTING_PATH("dynamic_wallpapers_directory",
         settings->paths.directory_dynamic_wallpapers, 1, ((void*)0), 1);
   SETTING_PATH("thumbnails_directory",
         settings->paths.directory_thumbnails, 1, ((void*)0), 1);
   SETTING_PATH("playlist_directory",
         settings->paths.directory_playlist, 1, ((void*)0), 1);
   SETTING_PATH("runtime_log_directory",
         settings->paths.directory_runtime_log, 1, ((void*)0), 1);
   SETTING_PATH("joypad_autoconfig_dir",
         settings->paths.directory_autoconfig, 0, ((void*)0), 1);
   SETTING_PATH("audio_filter_dir",
         settings->paths.directory_audio_filter, 1, ((void*)0), 1);
   SETTING_PATH("savefile_directory",
         dir_get_ptr(RARCH_DIR_SAVEFILE), 1, ((void*)0), 0);
   SETTING_PATH("savestate_directory",
         dir_get_ptr(RARCH_DIR_SAVESTATE), 1, ((void*)0), 0);
   SETTING_PATH("libretro_path",
         path_get_ptr(RARCH_PATH_CORE), 0, ((void*)0), 0);

   SETTING_PATH(
         "screenshot_directory",
         settings->paths.directory_screenshot, 1, ((void*)0), 0);

   {
      global_t *global = global_get_ptr();
      if (global)
      {
         SETTING_PATH("recording_output_directory",
               global->record.output_dir, 0, ((void*)0), 1);
         SETTING_PATH("recording_config_directory",
               global->record.config_dir, 0, ((void*)0), 1);
      }
   }

   SETTING_ARRAY("log_dir", settings->paths.log_dir, 1, ((void*)0), 1);

   *size = count;

   return tmp;
}
