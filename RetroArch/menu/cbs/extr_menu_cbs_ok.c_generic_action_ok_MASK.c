#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* path; } ;
struct video_shader_pass {TYPE_3__ source; } ;
struct video_shader {struct video_shader_pass* pass; } ;
struct TYPE_14__ {char* path_menu_wallpaper; char const* directory_libretro; char* path_stream_config; char* path_record_config; char* path_rgui_theme_preset; } ;
struct TYPE_11__ {int /*<<< orphan*/  config_save_on_exit; scalar_t__ audio_enable_menu_ok; scalar_t__ audio_enable_menu; } ;
struct TYPE_15__ {TYPE_4__ paths; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;
typedef  int /*<<< orphan*/  message ;
struct TYPE_12__ {size_t unsigned_var; } ;
struct TYPE_16__ {char const* filebrowser_label; TYPE_2__ scratchpad; } ;
typedef  TYPE_6__ menu_handle_t ;
typedef  enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef  int /*<<< orphan*/  destination_path ;
struct TYPE_17__ {int /*<<< orphan*/ * environ_get; int /*<<< orphan*/ * args; int /*<<< orphan*/ * argv; int /*<<< orphan*/  argc; } ;
typedef  TYPE_7__ content_ctx_info_t ;
typedef  int /*<<< orphan*/  config_file_t ;
typedef  int /*<<< orphan*/  action_path ;

/* Variables and functions */
#define  ACTION_OK_APPEND_DISK_IMAGE 147 
#define  ACTION_OK_LOAD_CHEAT_FILE 146 
#define  ACTION_OK_LOAD_CHEAT_FILE_APPEND 145 
#define  ACTION_OK_LOAD_CONFIG_FILE 144 
#define  ACTION_OK_LOAD_CORE 143 
#define  ACTION_OK_LOAD_PRESET 142 
#define  ACTION_OK_LOAD_RECORD_CONFIGFILE 141 
#define  ACTION_OK_LOAD_REMAPPING_FILE 140 
#define  ACTION_OK_LOAD_RGUI_MENU_THEME_PRESET 139 
#define  ACTION_OK_LOAD_SHADER_PASS 138 
#define  ACTION_OK_LOAD_STREAM_CONFIGFILE 137 
#define  ACTION_OK_LOAD_WALLPAPER 136 
#define  ACTION_OK_SET_DIRECTORY 135 
#define  ACTION_OK_SET_PATH 134 
#define  ACTION_OK_SET_PATH_AUDIO_FILTER 133 
#define  ACTION_OK_SET_PATH_OVERLAY 132 
#define  ACTION_OK_SET_PATH_VIDEO_FILTER 131 
#define  ACTION_OK_SET_PATH_VIDEO_LAYOUT 130 
#define  ACTION_OK_SIDELOAD_CORE 129 
#define  ACTION_OK_SUBSYSTEM_ADD 128 
 int /*<<< orphan*/  AUDIO_MIXER_SYSTEM_SLOT_OK ; 
 int /*<<< orphan*/  CMD_EVENT_DISK_APPEND_IMAGE ; 
 int /*<<< orphan*/  CMD_EVENT_RESUME ; 
 int /*<<< orphan*/  CORE_TYPE_PLAIN ; 
 int MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_DEFERRED_ONSCREEN_VIDEO_LAYOUT_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST ; 
 int MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR ; 
 int MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS ; 
 int /*<<< orphan*/  MENU_NAVIGATION_CTL_CLEAR ; 
 unsigned int MENU_SETTINGS ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int MSG_UNKNOWN ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 TYPE_5__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  menu_display_handle_wallpaper_upload ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*) ; 
 TYPE_6__* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (char const**,char const**,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 struct video_shader* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct video_shader*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 char* FUNC23 (int) ; 
 char const* FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char const*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,struct video_shader*) ; 

__attribute__((used)) static int FUNC35(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx,
      unsigned id, enum msg_hash_enums flush_id)
{
   char action_path[PATH_MAX_LENGTH];
   unsigned flush_type               = 0;
   int ret                           = 0;
   enum msg_hash_enums enum_idx      = MSG_UNKNOWN;
   const char             *menu_path = NULL;
   const char            *menu_label = NULL;
   const char *flush_char            = NULL;
   menu_handle_t               *menu = FUNC17();
#ifdef HAVE_AUDIOMIXER
   settings_t              *settings = config_get_ptr();

   if (settings->bools.audio_enable_menu && settings->bools.audio_enable_menu_ok)
      audio_driver_mixer_play_menu_sound(AUDIO_MIXER_SYSTEM_SLOT_OK);
#endif

   if (!menu)
      goto error;

   FUNC19(&menu_path,
         &menu_label, NULL, &enum_idx, NULL);

   action_path[0] = '\0';

   if (!FUNC28(path))
      FUNC11(action_path,
            menu_path, path, sizeof(action_path));
   else
      FUNC29(action_path, menu_path, sizeof(action_path));

   switch (id)
   {
      case ACTION_OK_LOAD_WALLPAPER:
         flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST);
         if (FUNC10(action_path))
         {
            settings_t            *settings = FUNC6();

            FUNC29(settings->paths.path_menu_wallpaper,
                  action_path, sizeof(settings->paths.path_menu_wallpaper));

            FUNC30(action_path,
                  FUNC32(), 0,
                  menu_display_handle_wallpaper_upload, NULL);
         }
         break;
      case ACTION_OK_LOAD_CORE:
         {
            content_ctx_info_t content_info;

            content_info.argc        = 0;
            content_info.argv        = NULL;
            content_info.args        = NULL;
            content_info.environ_get = NULL;

            flush_type = MENU_SETTINGS;

            if (!FUNC31(
                     action_path, NULL,
                     &content_info,
                     CORE_TYPE_PLAIN,
                     NULL, NULL))
            {
#ifndef HAVE_DYNAMIC
               ret = -1;
#endif
            }
         }
         break;
      case ACTION_OK_SIDELOAD_CORE:
         {
            settings_t            *settings = FUNC6();
            char destination_path[PATH_MAX_LENGTH];
            char message[PATH_MAX_LENGTH];

            FUNC11(destination_path, settings->paths.directory_libretro, FUNC24(action_path), sizeof(destination_path));

            if (!FUNC9(
                     action_path, destination_path, message, sizeof(message)))
            {
               FUNC26(FUNC23(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR), 1, 100, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
               FUNC0("[sideload] %s: %s\n", FUNC23(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR), message);
               FUNC0(FUNC23(MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_ERROR));
            }
            else
            {
               FUNC26(FUNC23(
                  MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS), 1, 100, true, NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
               FUNC0("[sideload] %s\n", FUNC23(MENU_ENUM_LABEL_VALUE_SIDELOAD_CORE_SUCCESS));
            }
         }
         break;
      case ACTION_OK_LOAD_CONFIG_FILE:
         {
            settings_t            *settings = FUNC6();
            flush_type                      = MENU_SETTINGS;

            FUNC15(true);

            if (FUNC7(settings->bools.config_save_on_exit, action_path))
            {
               bool pending_push = false;
               FUNC16(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
               ret = -1;
            }
         }
         break;
      case ACTION_OK_LOAD_PRESET:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
         {
            struct video_shader      *shader  = menu_shader_get();
            flush_char = msg_hash_to_str(flush_id);
            menu_shader_manager_set_preset(shader,
                  video_shader_parse_type(action_path),
                  action_path,
                  true);
         }
#endif
         break;
      case ACTION_OK_LOAD_SHADER_PASS:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
         {
            struct video_shader *shader           = menu_shader_get();
            struct video_shader_pass *shader_pass = shader ? &shader->pass[menu->scratchpad.unsigned_var] : NULL;
            flush_char                            = msg_hash_to_str((enum msg_hash_enums)flush_id);

            if (shader_pass)
            {
               strlcpy(
                     shader_pass->source.path,
                     action_path,
                     sizeof(shader_pass->source.path));
               video_shader_resolve_parameters(NULL, shader);

               menu_shader_set_modified(true);
            }
         }
#endif
         break;
      case ACTION_OK_LOAD_STREAM_CONFIGFILE:
         {
            settings_t *settings = FUNC6();
            flush_char       = FUNC23(flush_id);

            if (settings)
               FUNC29(settings->paths.path_stream_config, action_path,
                     sizeof(settings->paths.path_stream_config));
         }
         break;
      case ACTION_OK_LOAD_RECORD_CONFIGFILE:
         {
            settings_t *settings = FUNC6();
            flush_char       = FUNC23(flush_id);

            if (settings)
               FUNC29(settings->paths.path_record_config, action_path,
                     sizeof(settings->paths.path_record_config));
         }
         break;
      case ACTION_OK_LOAD_REMAPPING_FILE:
         {
            config_file_t *conf = FUNC5(action_path);
            flush_char          = FUNC23(flush_id);

            if (conf)
               FUNC13(conf, action_path);
         }
         break;
      case ACTION_OK_LOAD_CHEAT_FILE:
         flush_char = FUNC23(flush_id);
         FUNC3();

         if (!FUNC2(action_path,false))
            goto error;
         break;
      case ACTION_OK_LOAD_CHEAT_FILE_APPEND:
         flush_char = FUNC23(flush_id);

         if (!FUNC2(action_path,true))
            goto error;
         break;
      case ACTION_OK_LOAD_RGUI_MENU_THEME_PRESET:
         {
            settings_t *settings = FUNC6();
            flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_MENU_SETTINGS_LIST);

            if (settings)
               FUNC29(settings->paths.path_rgui_theme_preset, action_path,
                     sizeof(settings->paths.path_rgui_theme_preset));
         }
         break;
      case ACTION_OK_APPEND_DISK_IMAGE:
         flush_type = MENU_SETTINGS;
         FUNC4(CMD_EVENT_DISK_APPEND_IMAGE, action_path);
         FUNC12(CMD_EVENT_RESUME);
         break;
      case ACTION_OK_SUBSYSTEM_ADD:
         flush_type = MENU_SETTINGS;
         FUNC8(action_path);
         break;
      case ACTION_OK_SET_DIRECTORY:
         flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_DIRECTORY_SETTINGS_LIST);
#ifdef HAVE_COCOATOUCH
         // For iOS, set the path using realpath because the path name
         // can start with /private and this ensures the path starts with it.
         // This will allow the path to be properly substituted when fill_pathname_expand_special
         // is called.
         char real_action_path[PATH_MAX_LENGTH] = {0};
         realpath(action_path, real_action_path);
         strlcpy(action_path, real_action_path, sizeof(action_path));
#endif
         ret        = FUNC27(menu->filebrowser_label, action_path);
         break;
      case ACTION_OK_SET_PATH_VIDEO_FILTER:
         flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST);
         ret        = FUNC27(menu_label, action_path);
         break;
      case ACTION_OK_SET_PATH_AUDIO_FILTER:
         flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_AUDIO_SETTINGS_LIST);
         ret        = FUNC27(menu_label, action_path);
         break;
      case ACTION_OK_SET_PATH_OVERLAY:
         flush_char = FUNC23(MENU_ENUM_LABEL_DEFERRED_ONSCREEN_OVERLAY_SETTINGS_LIST);
         ret        = FUNC27(menu_label, action_path);
         break;
#ifdef HAVE_VIDEO_LAYOUT
      case ACTION_OK_SET_PATH_VIDEO_LAYOUT:
         flush_char = msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_ONSCREEN_VIDEO_LAYOUT_SETTINGS_LIST);
         ret        = set_path_generic(menu_label, action_path);
         break;
#endif
      case ACTION_OK_SET_PATH:
         flush_type = MENU_SETTINGS;
         ret        = FUNC27(menu_label, action_path);
         break;
      default:
         flush_char = FUNC23(flush_id);
         break;
   }

   FUNC18(flush_char, flush_type);

   return ret;

error:
   return FUNC14();
}