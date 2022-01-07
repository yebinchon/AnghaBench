
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {char* path; } ;
struct video_shader_pass {TYPE_3__ source; } ;
struct video_shader {struct video_shader_pass* pass; } ;
struct TYPE_14__ {char* path_menu_wallpaper; char const* directory_libretro; char* path_stream_config; char* path_record_config; char* path_rgui_theme_preset; } ;
struct TYPE_11__ {int config_save_on_exit; scalar_t__ audio_enable_menu_ok; scalar_t__ audio_enable_menu; } ;
struct TYPE_15__ {TYPE_4__ paths; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;
typedef int message ;
struct TYPE_12__ {size_t unsigned_var; } ;
struct TYPE_16__ {char const* filebrowser_label; TYPE_2__ scratchpad; } ;
typedef TYPE_6__ menu_handle_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef int destination_path ;
struct TYPE_17__ {int * environ_get; int * args; int * argv; int argc; } ;
typedef TYPE_7__ content_ctx_info_t ;
typedef int config_file_t ;
typedef int action_path ;
 int AUDIO_MIXER_SYSTEM_SLOT_OK ;
 int CMD_EVENT_DISK_APPEND_IMAGE ;
 int CMD_EVENT_RESUME ;
 int CORE_TYPE_PLAIN ;
 int MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_ONSCREEN_VIDEO_LAYOUT_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR ;
 int MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS ;
 int MENU_NAVIGATION_CTL_CLEAR ;
 unsigned int MENU_SETTINGS ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_UNKNOWN ;
 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,...) ;
 int audio_driver_mixer_play_menu_sound (int ) ;
 int cheat_manager_load (char*,int) ;
 int cheat_manager_state_free () ;
 int command_event (int ,char*) ;
 int * config_file_new_from_path_to_string (char*) ;
 TYPE_5__* config_get_ptr () ;
 int config_replace (int ,char*) ;
 int content_add_subsystem (char*) ;
 int file_copy (char*,char*,char*,int) ;
 int filestream_exists (char*) ;
 int fill_pathname_join (char*,char const*,char const*,int) ;
 int generic_action_ok_command (int ) ;
 int input_remapping_load_file (int *,char*) ;
 int menu_cbs_exit () ;
 int menu_display_handle_wallpaper_upload ;
 int menu_display_set_msg_force (int) ;
 int menu_driver_ctl (int ,int*) ;
 TYPE_6__* menu_driver_get_ptr () ;
 int menu_entries_flush_stack (char const*,unsigned int) ;
 int menu_entries_get_last_stack (char const**,char const**,int *,int*,int *) ;
 struct video_shader* menu_shader_get () ;
 int menu_shader_manager_set_preset (struct video_shader*,int ,char*,int) ;
 int menu_shader_set_modified (int) ;
 char* msg_hash_to_str (int) ;
 char const* path_basename (char*) ;
 int realpath (char*,char*) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int set_path_generic (char const*,char*) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,int) ;
 int task_push_image_load (char*,int ,int ,int ,int *) ;
 int task_push_load_new_core (char*,int *,TYPE_7__*,int ,int *,int *) ;
 int video_driver_supports_rgba () ;
 int video_shader_parse_type (char*) ;
 int video_shader_resolve_parameters (int *,struct video_shader*) ;

__attribute__((used)) static int generic_action_ok(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx,
      unsigned id, enum msg_hash_enums flush_id)
{
   char action_path[PATH_MAX_LENGTH];
   unsigned flush_type = 0;
   int ret = 0;
   enum msg_hash_enums enum_idx = MSG_UNKNOWN;
   const char *menu_path = ((void*)0);
   const char *menu_label = ((void*)0);
   const char *flush_char = ((void*)0);
   menu_handle_t *menu = menu_driver_get_ptr();







   if (!menu)
      goto error;

   menu_entries_get_last_stack(&menu_path,
         &menu_label, ((void*)0), &enum_idx, ((void*)0));

   action_path[0] = '\0';

   if (!string_is_empty(path))
      fill_pathname_join(action_path,
            menu_path, path, sizeof(action_path));
   else
      strlcpy(action_path, menu_path, sizeof(action_path));

   switch (id)
   {
      case 136:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST);
         if (filestream_exists(action_path))
         {
            settings_t *settings = config_get_ptr();

            strlcpy(settings->paths.path_menu_wallpaper,
                  action_path, sizeof(settings->paths.path_menu_wallpaper));

            task_push_image_load(action_path,
                  video_driver_supports_rgba(), 0,
                  menu_display_handle_wallpaper_upload, ((void*)0));
         }
         break;
      case 143:
         {
            content_ctx_info_t content_info;

            content_info.argc = 0;
            content_info.argv = ((void*)0);
            content_info.args = ((void*)0);
            content_info.environ_get = ((void*)0);

            flush_type = MENU_SETTINGS;

            if (!task_push_load_new_core(
                     action_path, ((void*)0),
                     &content_info,
                     CORE_TYPE_PLAIN,
                     ((void*)0), ((void*)0)))
            {

               ret = -1;

            }
         }
         break;
      case 129:
         {
            settings_t *settings = config_get_ptr();
            char destination_path[PATH_MAX_LENGTH];
            char message[PATH_MAX_LENGTH];

            fill_pathname_join(destination_path, settings->paths.directory_libretro, path_basename(action_path), sizeof(destination_path));

            if (!file_copy(
                     action_path, destination_path, message, sizeof(message)))
            {
               runloop_msg_queue_push(msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR), 1, 100, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
               RARCH_LOG("[sideload] %s: %s\n", msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR), message);
               RARCH_LOG(msg_hash_to_str(MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR));
            }
            else
            {
               runloop_msg_queue_push(msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS), 1, 100, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
               RARCH_LOG("[sideload] %s\n", msg_hash_to_str(MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS));
            }
         }
         break;
      case 144:
         {
            settings_t *settings = config_get_ptr();
            flush_type = MENU_SETTINGS;

            menu_display_set_msg_force(1);

            if (config_replace(settings->bools.config_save_on_exit, action_path))
            {
               bool pending_push = 0;
               menu_driver_ctl(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
               ret = -1;
            }
         }
         break;
      case 142:
         break;
      case 138:
         break;
      case 137:
         {
            settings_t *settings = config_get_ptr();
            flush_char = msg_hash_to_str(flush_id);

            if (settings)
               strlcpy(settings->paths.path_stream_config, action_path,
                     sizeof(settings->paths.path_stream_config));
         }
         break;
      case 141:
         {
            settings_t *settings = config_get_ptr();
            flush_char = msg_hash_to_str(flush_id);

            if (settings)
               strlcpy(settings->paths.path_record_config, action_path,
                     sizeof(settings->paths.path_record_config));
         }
         break;
      case 140:
         {
            config_file_t *conf = config_file_new_from_path_to_string(action_path);
            flush_char = msg_hash_to_str(flush_id);

            if (conf)
               input_remapping_load_file(conf, action_path);
         }
         break;
      case 146:
         flush_char = msg_hash_to_str(flush_id);
         cheat_manager_state_free();

         if (!cheat_manager_load(action_path,0))
            goto error;
         break;
      case 145:
         flush_char = msg_hash_to_str(flush_id);

         if (!cheat_manager_load(action_path,1))
            goto error;
         break;
      case 139:
         {
            settings_t *settings = config_get_ptr();
            flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST);

            if (settings)
               strlcpy(settings->paths.path_rgui_theme_preset, action_path,
                     sizeof(settings->paths.path_rgui_theme_preset));
         }
         break;
      case 147:
         flush_type = MENU_SETTINGS;
         command_event(CMD_EVENT_DISK_APPEND_IMAGE, action_path);
         generic_action_ok_command(CMD_EVENT_RESUME);
         break;
      case 128:
         flush_type = MENU_SETTINGS;
         content_add_subsystem(action_path);
         break;
      case 135:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST);
         ret = set_path_generic(menu->filebrowser_label, action_path);
         break;
      case 131:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST);
         ret = set_path_generic(menu_label, action_path);
         break;
      case 133:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST);
         ret = set_path_generic(menu_label, action_path);
         break;
      case 132:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST);
         ret = set_path_generic(menu_label, action_path);
         break;






      case 134:
         flush_type = MENU_SETTINGS;
         ret = set_path_generic(menu_label, action_path);
         break;
      default:
         flush_char = msg_hash_to_str(flush_id);
         break;
   }

   menu_entries_flush_stack(flush_char, flush_type);

   return ret;

error:
   return menu_cbs_exit();
}
