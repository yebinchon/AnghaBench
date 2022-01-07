
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_RIGHT (int *,int ) ;
 int MENU_ENUM_LABEL_ADD_TAB ;
 int MENU_ENUM_LABEL_FAVORITES_TAB ;
 int MENU_ENUM_LABEL_HISTORY_TAB ;
 int MENU_ENUM_LABEL_HORIZONTAL_MENU ;
 int MENU_ENUM_LABEL_IMAGES_TAB ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 int MENU_ENUM_LABEL_MUSIC_TAB ;
 int MENU_ENUM_LABEL_NETPLAY_TAB ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MENU_ENUM_LABEL_VIDEO_TAB ;
 unsigned int MENU_SETTING_NO_ITEM ;
 int action_right_mainmenu ;
 int bind_right_generic ;
 int menu_cbs_exit () ;
 scalar_t__ menu_cbs_init_bind_right_compare_label (int *,char const*,int ,char const*) ;
 scalar_t__ menu_cbs_init_bind_right_compare_type (int *,unsigned int,char const*) ;
 int msg_hash_to_str (int ) ;
 scalar_t__ string_is_equal (char const*,int ) ;

int menu_cbs_init_bind_right(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      const char *menu_label,
      uint32_t label_hash)
{
   if (!cbs)
      return menu_cbs_exit();

   BIND_ACTION_RIGHT(cbs, bind_right_generic);

   if (type == MENU_SETTING_NO_ITEM)
   {
      if ( string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_ADD_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_NETPLAY_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_IMAGES_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_VIDEO_TAB)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
            string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB))
         )
      {
            BIND_ACTION_RIGHT(cbs, action_right_mainmenu);
            return 0;
      }
   }

   if (menu_cbs_init_bind_right_compare_label(cbs, label, label_hash, menu_label
            ) == 0)
      return 0;

   if (menu_cbs_init_bind_right_compare_type(cbs, type, menu_label ) == 0)
      return 0;

   return menu_cbs_exit();
}
