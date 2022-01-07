
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* directory_playlist; } ;
struct TYPE_8__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {int type; char* exts; char* label; int need_push_no_playlist_entries; int need_refresh; int need_push; char* path; int list; } ;
typedef TYPE_3__ menu_displaylist_info_t ;
typedef int menu_displaylist_ctx_entry_t ;


 int DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST ;
 int DISPLAYLIST_DATABASE_PLAYLISTS ;
 int DISPLAYLIST_FAVORITES ;
 int DISPLAYLIST_HISTORY ;
 int DISPLAYLIST_HORIZONTAL ;
 int DISPLAYLIST_IMAGES_HISTORY ;
 int DISPLAYLIST_MUSIC_HISTORY ;
 int DISPLAYLIST_NETPLAY_ROOM_LIST ;
 int DISPLAYLIST_SCAN_DIRECTORY_LIST ;
 int DISPLAYLIST_SETTINGS_ALL ;
 int DISPLAYLIST_VIDEO_HISTORY ;
 int MENU_ENTRIES_CTL_CLEAR ;
 int MENU_ENUM_LABEL_ADD_TAB ;
 int MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS ;
 int MENU_ENUM_LABEL_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_HISTORY_TAB ;
 int MENU_ENUM_LABEL_HORIZONTAL_MENU ;
 int MENU_ENUM_LABEL_IMAGES_TAB ;
 int MENU_ENUM_LABEL_MUSIC_TAB ;
 int MENU_ENUM_LABEL_NETPLAY_TAB ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MENU_ENUM_LABEL_TAKE_SCREENSHOT ;
 int MENU_ENUM_LABEL_VALUE_TAKE_SCREENSHOT ;
 int MENU_ENUM_LABEL_VIDEO_TAB ;
 int MENU_SETTING_ACTION_SCREENSHOT ;
 int RARCH_CTL_IS_DUMMY_CORE ;
 TYPE_2__* config_get_ptr () ;
 int filebrowser_clear_type () ;
 int free (char*) ;
 scalar_t__ menu_displaylist_ctl (int ,TYPE_3__*) ;
 int menu_entries_append_enum (int ,char*,char*,int ,int ,int ,int ) ;
 int menu_entries_ctl (int ,int ) ;
 char* msg_hash_to_str (int ) ;
 int rarch_ctl (int ,int *) ;
 void* strdup (char*) ;
 scalar_t__ string_is_empty (char*) ;
 scalar_t__ string_is_equal (char const*,char*) ;

__attribute__((used)) static bool menu_displaylist_push_internal(
      const char *label,
      menu_displaylist_ctx_entry_t *entry,
      menu_displaylist_info_t *info)
{
   if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_HISTORY, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_FAVORITES, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_SETTINGS_ALL, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_CHEAT_SEARCH_SETTINGS)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_CHEAT_SEARCH_SETTINGS_LIST, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB)))
   {
      filebrowser_clear_type();
      info->type = 42;

      if (!string_is_empty(info->exts))
         free(info->exts);
      if (!string_is_empty(info->label))
         free(info->label);

      info->exts = strdup("lpl");
      info->label = strdup(
            msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);
      menu_displaylist_ctl(DISPLAYLIST_MUSIC_HISTORY, info);
      return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_VIDEO_TAB)))
   {
      filebrowser_clear_type();
      info->type = 42;

      if (!string_is_empty(info->exts))
         free(info->exts);
      if (!string_is_empty(info->label))
         free(info->label);

      info->exts = strdup("lpl");
      info->label = strdup(
            msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);
      menu_displaylist_ctl(DISPLAYLIST_VIDEO_HISTORY, info);
      return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_IMAGES_TAB)))
   {
      filebrowser_clear_type();
      info->type = 42;

      if (!string_is_empty(info->exts))
         free(info->exts);
      if (!string_is_empty(info->label))
         free(info->label);

      info->exts = strdup("lpl");
      info->label = strdup(
            msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);
      menu_displaylist_ctl(DISPLAYLIST_IMAGES_HISTORY, info);
      return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      settings_t *settings = config_get_ptr();

      filebrowser_clear_type();
      info->type = 42;

      if (!string_is_empty(info->exts))
         free(info->exts);
      if (!string_is_empty(info->label))
         free(info->label);

      info->exts = strdup("lpl");
      info->label = strdup(
            msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));

      if (string_is_empty(settings->paths.directory_playlist))
      {
         menu_entries_ctl(MENU_ENTRIES_CTL_CLEAR, info->list);
         info->need_refresh = 1;
         info->need_push_no_playlist_entries = 1;
         info->need_push = 1;

         return 1;
      }
      else
      {
         if (!string_is_empty(info->path))
            free(info->path);

         info->path = strdup(settings->paths.directory_playlist);

         if (menu_displaylist_ctl(
                  DISPLAYLIST_DATABASE_PLAYLISTS, info))
            return 1;
      }
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_ADD_TAB)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_SCAN_DIRECTORY_LIST, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_NETPLAY_TAB)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_NETPLAY_ROOM_LIST, info))
         return 1;
   }
   else if (string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU)))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_HORIZONTAL, info))
         return 1;
   }

   return 0;
}
