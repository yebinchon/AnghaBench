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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {scalar_t__ enum_idx; } ;
typedef  TYPE_1__ menu_file_list_cbs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_MIXER_STREAM_SETTINGS_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_PLAYLISTS_TAB ; 
 scalar_t__ MENU_ENUM_LABEL_PLAYLIST_ENTRY ; 
 int /*<<< orphan*/  action_get_quick_menu_views_settings_list ; 
 int /*<<< orphan*/  action_get_title_collection ; 
 int /*<<< orphan*/  action_get_title_default ; 
 int /*<<< orphan*/  action_get_title_deferred_playlist_list ; 
 int /*<<< orphan*/  action_get_title_dropdown_item ; 
 int /*<<< orphan*/  action_get_title_dropdown_playlist_default_core_item ; 
 int /*<<< orphan*/  action_get_title_dropdown_playlist_label_display_mode_item ; 
 int /*<<< orphan*/  action_get_title_dropdown_playlist_left_thumbnail_mode_item ; 
 int /*<<< orphan*/  action_get_title_dropdown_playlist_right_thumbnail_mode_item ; 
 int /*<<< orphan*/  action_get_title_dropdown_resolution_item ; 
 int /*<<< orphan*/  action_get_title_list_rdb_entry_database_info ; 
 int /*<<< orphan*/  action_get_title_mixer_stream_actions ; 
 int /*<<< orphan*/  action_get_title_video_shader_preset_remove ; 
 int /*<<< orphan*/  action_get_title_video_shader_preset_save_list ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ ) ; 

int FUNC6(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash)
{
   if (!cbs)
      return -1;

   FUNC0(cbs, action_get_title_default);

   if (cbs->enum_idx != MENU_ENUM_LABEL_PLAYLIST_ENTRY &&
       FUNC1(cbs, label, label_hash) == 0)
      return 0;

   if (FUNC2(cbs, type) == 0)
      return 0;

#ifdef HAVE_AUDIOMIXER
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_MIXER_STREAM_SETTINGS_LIST)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_mixer_stream_actions);
      return 0;
   }
#endif
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST)))
   {
      FUNC0(cbs, action_get_title_video_shader_preset_save_list);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST)))
   {
      FUNC0(cbs, action_get_title_video_shader_preset_remove);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST)))
   {
      FUNC0(cbs, action_get_title_dropdown_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL)))
   {
      FUNC0(cbs, action_get_title_dropdown_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION)))
   {
      FUNC0(cbs, action_get_title_dropdown_resolution_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE)))
   {
      FUNC0(cbs, action_get_title_dropdown_playlist_default_core_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE)))
   {
      FUNC0(cbs, action_get_title_dropdown_playlist_label_display_mode_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE)))
   {
      FUNC0(cbs, action_get_title_dropdown_playlist_right_thumbnail_mode_item);
      return 0;
   }
   if (FUNC4(label,
            FUNC3(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE)))
   {
      FUNC0(cbs, action_get_title_dropdown_playlist_left_thumbnail_mode_item);
      return 0;
   }
   if (FUNC4(label, FUNC3(MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS)))
   {
      FUNC0(cbs, action_get_quick_menu_views_settings_list);
      return 0;
   }
   if (FUNC4(label, FUNC3(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)))
   {
      FUNC0(cbs, action_get_title_deferred_playlist_list);
      return 0;
   }
   if (FUNC4(label, FUNC3(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS)))
   {
      FUNC0(cbs, action_get_title_deferred_playlist_list);
      return 0;
   }
   if (FUNC5(label, FUNC3(MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL)))
   {
      FUNC0(cbs, action_get_title_list_rdb_entry_database_info);
      return 0;
   }
   if (FUNC4(label, FUNC3(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      FUNC0(cbs, action_get_title_collection);
      return 0;
   }

   return -1;
}