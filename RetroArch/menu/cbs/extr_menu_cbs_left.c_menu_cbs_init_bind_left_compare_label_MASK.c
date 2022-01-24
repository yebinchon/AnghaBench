#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_5__ {int enum_idx; TYPE_2__* setting; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;
typedef  int /*<<< orphan*/  label_setting ;
struct TYPE_6__ {char* parent_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int MAX_USERS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_ADD_TAB ; 
#define  MENU_ENUM_LABEL_CHEAT_NUM_PASSES 148 
#define  MENU_ENUM_LABEL_CONNECT_NETPLAY_ROOM 147 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HISTORY_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_HORIZONTAL_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_IMAGES_TAB ; 
#define  MENU_ENUM_LABEL_LOAD_ARCHIVE_DETECT_CORE 146 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MAIN_MENU ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_MUSIC_TAB ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_NETPLAY_TAB ; 
#define  MENU_ENUM_LABEL_NO_ITEMS 145 
#define  MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE 144 
#define  MENU_ENUM_LABEL_OPEN_ARCHIVE_DETECT_CORE 143 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLISTS_TAB ; 
#define  MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE 142 
#define  MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE 141 
#define  MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE 140 
#define  MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE 139 
#define  MENU_ENUM_LABEL_SCREEN_RESOLUTION 138 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SETTINGS_TAB ; 
#define  MENU_ENUM_LABEL_SHADER_WATCH_FOR_CHANGES 137 
#define  MENU_ENUM_LABEL_START_VIDEO_PROCESSOR 136 
#define  MENU_ENUM_LABEL_SUBSYSTEM_ADD 135 
#define  MENU_ENUM_LABEL_SUBSYSTEM_LOAD 134 
#define  MENU_ENUM_LABEL_TAKE_SCREENSHOT 133 
#define  MENU_ENUM_LABEL_VIDEO_GPU_INDEX 132 
#define  MENU_ENUM_LABEL_VIDEO_SHADER_DEFAULT_FILTER 131 
#define  MENU_ENUM_LABEL_VIDEO_SHADER_FILTER_PASS 130 
#define  MENU_ENUM_LABEL_VIDEO_SHADER_NUM_PASSES 129 
#define  MENU_ENUM_LABEL_VIDEO_SHADER_SCALE_PASS 128 
 int /*<<< orphan*/  MENU_ENUM_LABEL_VIDEO_TAB ; 
 int MSG_UNKNOWN ; 
 scalar_t__ ST_GROUP ; 
 int /*<<< orphan*/  action_left_cheat_num_passes ; 
 int /*<<< orphan*/  action_left_mainmenu ; 
 int /*<<< orphan*/  action_left_scroll ; 
 int /*<<< orphan*/  action_left_shader_filter_default ; 
 int /*<<< orphan*/  action_left_shader_filter_pass ; 
 int /*<<< orphan*/  action_left_shader_num_passes ; 
 int /*<<< orphan*/  action_left_shader_scale_pass ; 
 int /*<<< orphan*/  action_left_shader_watch_for_changes ; 
 int /*<<< orphan*/  action_left_video_gpu_index ; 
 int /*<<< orphan*/  action_left_video_resolution ; 
 int /*<<< orphan*/  bind_left_generic ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  playlist_association_left ; 
 int /*<<< orphan*/  playlist_label_display_mode_left ; 
 int /*<<< orphan*/  playlist_left_thumbnail_mode_left ; 
 int /*<<< orphan*/  playlist_right_thumbnail_mode_left ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned int) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(menu_file_list_cbs_t *cbs,
      const char *label, uint32_t label_hash, const char *menu_label)
{

   if (cbs->setting)
   {
      const char *parent_group   = cbs->setting->parent_group;

      if (FUNC5(parent_group, FUNC2(MENU_ENUM_LABEL_MAIN_MENU))
               && (FUNC3(cbs->setting) == ST_GROUP))
      {
         FUNC0(cbs, action_left_mainmenu);
         return 0;
      }
   }

   if (FUNC6(label, "input_player") && FUNC6(label, "_joypad_index"))
   {
      unsigned i;
      for (i = 0; i < MAX_USERS; i++)
      {
         uint32_t label_setting_hash;
         char label_setting[128];

         label_setting[0] = '\0';

         FUNC4(label_setting, sizeof(label_setting), "input_player%d_joypad_index", i + 1);
         label_setting_hash = FUNC1(label_setting);

         if (label_hash != label_setting_hash)
            continue;

         FUNC0(cbs, bind_left_generic);
         return 0;
      }
   }

   if (FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      FUNC0(cbs, action_left_mainmenu);
      return 0;
   }

   if (FUNC6(label, "rdb_entry") || FUNC6(label, "content_info"))
   {
      FUNC0(cbs, action_left_scroll);
   }
   else
   {
      if (cbs->enum_idx != MSG_UNKNOWN)
      {
         switch (cbs->enum_idx)
         {
            case MENU_ENUM_LABEL_SUBSYSTEM_ADD:
            case MENU_ENUM_LABEL_SUBSYSTEM_LOAD:
            case MENU_ENUM_LABEL_CONNECT_NETPLAY_ROOM:
               FUNC0(cbs, action_left_mainmenu);
               break;
            case MENU_ENUM_LABEL_VIDEO_SHADER_SCALE_PASS:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
               BIND_ACTION_LEFT(cbs, action_left_shader_scale_pass);
#endif
               break;
            case MENU_ENUM_LABEL_VIDEO_SHADER_FILTER_PASS:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
               BIND_ACTION_LEFT(cbs, action_left_shader_filter_pass);
#endif
               break;
            case MENU_ENUM_LABEL_VIDEO_SHADER_DEFAULT_FILTER:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
               BIND_ACTION_LEFT(cbs, action_left_shader_filter_default);
#endif
               break;
            case MENU_ENUM_LABEL_SHADER_WATCH_FOR_CHANGES:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
               BIND_ACTION_LEFT(cbs, action_left_shader_watch_for_changes);
#endif
               break;
            case MENU_ENUM_LABEL_VIDEO_SHADER_NUM_PASSES:
#if defined(HAVE_CG) || defined(HAVE_GLSL) || defined(HAVE_SLANG) || defined(HAVE_HLSL)
               BIND_ACTION_LEFT(cbs, action_left_shader_num_passes);
#endif
               break;
            case MENU_ENUM_LABEL_CHEAT_NUM_PASSES:
               FUNC0(cbs, action_left_cheat_num_passes);
               break;
            case MENU_ENUM_LABEL_SCREEN_RESOLUTION:
               FUNC0(cbs, action_left_video_resolution);
               break;
            case MENU_ENUM_LABEL_OPEN_ARCHIVE_DETECT_CORE:
            case MENU_ENUM_LABEL_LOAD_ARCHIVE_DETECT_CORE:
               FUNC0(cbs, action_left_scroll);
               break;
            case MENU_ENUM_LABEL_NO_ITEMS:
            case MENU_ENUM_LABEL_NO_PLAYLIST_ENTRIES_AVAILABLE:
               if (
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_HISTORY_TAB))   ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_FAVORITES_TAB))   ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_MAIN_MENU))       ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_PLAYLISTS_TAB))   ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_MUSIC_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_IMAGES_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_VIDEO_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_HORIZONTAL_MENU))
                  )
               {
                  FUNC0(cbs, action_left_mainmenu);
               }
               else
               {
                  FUNC0(cbs, action_left_scroll);
               }
               break;
            case MENU_ENUM_LABEL_START_VIDEO_PROCESSOR:
            case MENU_ENUM_LABEL_TAKE_SCREENSHOT:
               if (
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_HISTORY_TAB))   ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_FAVORITES_TAB))   ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_ADD_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_NETPLAY_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_MUSIC_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_IMAGES_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_VIDEO_TAB)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
                     FUNC5(menu_label, FUNC2(MENU_ENUM_LABEL_SETTINGS_TAB))
                  )
               {
                  FUNC0(cbs, action_left_mainmenu);
                  break;
               }
            case MENU_ENUM_LABEL_VIDEO_GPU_INDEX:
               FUNC0(cbs, action_left_video_gpu_index);
               break;
            case MENU_ENUM_LABEL_PLAYLIST_MANAGER_DEFAULT_CORE:
               FUNC0(cbs, playlist_association_left);
               break;
            case MENU_ENUM_LABEL_PLAYLIST_MANAGER_LABEL_DISPLAY_MODE:
               FUNC0(cbs, playlist_label_display_mode_left);
               break;
            case MENU_ENUM_LABEL_PLAYLIST_MANAGER_RIGHT_THUMBNAIL_MODE:
               FUNC0(cbs, playlist_right_thumbnail_mode_left);
               break;
            case MENU_ENUM_LABEL_PLAYLIST_MANAGER_LEFT_THUMBNAIL_MODE:
               FUNC0(cbs, playlist_left_thumbnail_mode_left);
               break;
            default:
               return -1;
         }
      }
      else
      {
         return -1;
      }
   }

   return 0;
}