
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_GET_TITLE (TYPE_1__*,int ) ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL ;
 int MENU_ENUM_LABEL_DEFERRED_MIXER_STREAM_SETTINGS_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS ;
 int MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL ;
 int MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS ;
 int MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 scalar_t__ MENU_ENUM_LABEL_PLAYLIST_ENTRY ;
 int action_get_quick_menu_views_settings_list ;
 int action_get_title_collection ;
 int action_get_title_default ;
 int action_get_title_deferred_playlist_list ;
 int action_get_title_dropdown_item ;
 int action_get_title_dropdown_playlist_default_core_item ;
 int action_get_title_dropdown_playlist_label_display_mode_item ;
 int action_get_title_dropdown_playlist_left_thumbnail_mode_item ;
 int action_get_title_dropdown_playlist_right_thumbnail_mode_item ;
 int action_get_title_dropdown_resolution_item ;
 int action_get_title_list_rdb_entry_database_info ;
 int action_get_title_mixer_stream_actions ;
 int action_get_title_video_shader_preset_remove ;
 int action_get_title_video_shader_preset_save_list ;
 scalar_t__ menu_cbs_init_bind_title_compare_label (TYPE_1__*,char const*,int ) ;
 scalar_t__ menu_cbs_init_bind_title_compare_type (TYPE_1__*,unsigned int) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 scalar_t__ strstr (char const*,int ) ;

int menu_cbs_init_bind_title(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash)
{
   if (!cbs)
      return -1;

   BIND_ACTION_GET_TITLE(cbs, action_get_title_default);

   if (cbs->enum_idx != MENU_ENUM_LABEL_PLAYLIST_ENTRY &&
       menu_cbs_init_bind_title_compare_label(cbs, label, label_hash) == 0)
      return 0;

   if (menu_cbs_init_bind_title_compare_type(cbs, type) == 0)
      return 0;
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_SAVE_LIST)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_video_shader_preset_save_list);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_VIDEO_SHADER_PRESET_REMOVE_LIST)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_video_shader_preset_remove);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_resolution_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_playlist_default_core_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_playlist_label_display_mode_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_playlist_right_thumbnail_mode_item);
      return 0;
   }
   if (string_is_equal(label,
            msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_dropdown_playlist_left_thumbnail_mode_item);
      return 0;
   }
   if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_RPL_ENTRY_ACTIONS)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_quick_menu_views_settings_list);
      return 0;
   }
   if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_deferred_playlist_list);
      return 0;
   }
   if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_MANAGER_SETTINGS)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_deferred_playlist_list);
      return 0;
   }
   if (strstr(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_RDB_ENTRY_DETAIL)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_list_rdb_entry_database_info);
      return 0;
   }
   if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      BIND_ACTION_GET_TITLE(cbs, action_get_title_collection);
      return 0;
   }

   return -1;
}
