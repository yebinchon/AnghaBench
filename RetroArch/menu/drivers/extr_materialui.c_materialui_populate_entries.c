
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int settings_t ;
struct TYPE_5__ {int is_playlist; int is_file_list; int is_dropdown_list; float touch_feedback_alpha; int touch_feedback_update_selection; int menu_stack_flushed; int need_compute; scalar_t__ touch_feedback_selection; int * playlist; int menu_title; } ;
typedef TYPE_1__ materialui_handle_t ;


 int MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION ;
 int MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL ;
 int MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST ;
 int MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ;
 int MENU_ENUM_LABEL_FAVORITES ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ;
 int MENU_ENUM_LABEL_LOAD_CONTENT_LIST ;
 int MENU_ENUM_LABEL_SCAN_DIRECTORY ;
 int MENU_ENUM_LABEL_SCAN_FILE ;
 int * config_get_ptr () ;
 int materialui_init_transition_animation (TYPE_1__*,int *) ;
 int materialui_populate_nav_bar (TYPE_1__*,char const*,int *) ;
 int materialui_update_list_view (TYPE_1__*) ;
 int menu_entries_get_title (int ,int) ;
 int msg_hash_to_str (int ) ;
 int * playlist_get_cached () ;
 scalar_t__ string_is_equal (char const*,int ) ;

__attribute__((used)) static void materialui_populate_entries(
      void *data, const char *path,
      const char *label, unsigned i)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   settings_t *settings = config_get_ptr();

   if (!mui || !settings)
      return;


   menu_entries_get_title(mui->menu_title, sizeof(mui->menu_title));






   mui->is_playlist = 0;
   mui->is_file_list = 0;
   mui->is_dropdown_list = 0;

   mui->is_playlist = string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) ||
                      string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) ||
                      string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST));

   if (!mui->is_playlist)
   {




      mui->is_file_list = string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_SCAN_DIRECTORY)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_SCAN_FILE)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_LOAD_CONTENT_LIST)) ||
                          string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES));

      if (!mui->is_file_list)
         mui->is_dropdown_list = string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE)) ||
                                 string_is_equal(label, msg_hash_to_str(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE));
   }


   if (mui->is_playlist)
      mui->playlist = playlist_get_cached();
   else
      mui->playlist = ((void*)0);


   materialui_populate_nav_bar(mui, label, settings);


   materialui_update_list_view(mui);




   mui->touch_feedback_selection = 0;
   mui->touch_feedback_alpha = 0.0f;
   mui->touch_feedback_update_selection = 0;


   materialui_init_transition_animation(mui, settings);


   mui->menu_stack_flushed = 0;





   mui->need_compute = 1;
}
