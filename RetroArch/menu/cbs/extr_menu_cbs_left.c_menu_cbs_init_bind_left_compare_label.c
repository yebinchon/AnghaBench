
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int enum_idx; TYPE_2__* setting; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;
typedef int label_setting ;
struct TYPE_6__ {char* parent_group; } ;


 int BIND_ACTION_LEFT (TYPE_1__*,int ) ;
 unsigned int MAX_USERS ;
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
 int MSG_UNKNOWN ;
 scalar_t__ ST_GROUP ;
 int action_left_cheat_num_passes ;
 int action_left_mainmenu ;
 int action_left_scroll ;
 int action_left_shader_filter_default ;
 int action_left_shader_filter_pass ;
 int action_left_shader_num_passes ;
 int action_left_shader_scale_pass ;
 int action_left_shader_watch_for_changes ;
 int action_left_video_gpu_index ;
 int action_left_video_resolution ;
 int bind_left_generic ;
 scalar_t__ msg_hash_calculate (char*) ;
 int msg_hash_to_str (int ) ;
 int playlist_association_left ;
 int playlist_label_display_mode_left ;
 int playlist_left_thumbnail_mode_left ;
 int playlist_right_thumbnail_mode_left ;
 scalar_t__ setting_get_type (TYPE_2__*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 scalar_t__ string_is_equal (char const*,int ) ;
 scalar_t__ strstr (char const*,char*) ;

__attribute__((used)) static int menu_cbs_init_bind_left_compare_label(menu_file_list_cbs_t *cbs,
      const char *label, uint32_t label_hash, const char *menu_label)
{

   if (cbs->setting)
   {
      const char *parent_group = cbs->setting->parent_group;

      if (string_is_equal(parent_group, msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU))
               && (setting_get_type(cbs->setting) == ST_GROUP))
      {
         BIND_ACTION_LEFT(cbs, action_left_mainmenu);
         return 0;
      }
   }

   if (strstr(label, "input_player") && strstr(label, "_joypad_index"))
   {
      unsigned i;
      for (i = 0; i < MAX_USERS; i++)
      {
         uint32_t label_setting_hash;
         char label_setting[128];

         label_setting[0] = '\0';

         snprintf(label_setting, sizeof(label_setting), "input_player%d_joypad_index", i + 1);
         label_setting_hash = msg_hash_calculate(label_setting);

         if (label_hash != label_setting_hash)
            continue;

         BIND_ACTION_LEFT(cbs, bind_left_generic);
         return 0;
      }
   }

   if (string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)))
   {
      BIND_ACTION_LEFT(cbs, action_left_mainmenu);
      return 0;
   }

   if (strstr(label, "rdb_entry") || strstr(label, "content_info"))
   {
      BIND_ACTION_LEFT(cbs, action_left_scroll);
   }
   else
   {
      if (cbs->enum_idx != MSG_UNKNOWN)
      {
         switch (cbs->enum_idx)
         {
            case 135:
            case 134:
            case 147:
               BIND_ACTION_LEFT(cbs, action_left_mainmenu);
               break;
            case 128:



               break;
            case 130:



               break;
            case 131:



               break;
            case 137:



               break;
            case 129:



               break;
            case 148:
               BIND_ACTION_LEFT(cbs, action_left_cheat_num_passes);
               break;
            case 138:
               BIND_ACTION_LEFT(cbs, action_left_video_resolution);
               break;
            case 143:
            case 146:
               BIND_ACTION_LEFT(cbs, action_left_scroll);
               break;
            case 145:
            case 144:
               if (
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_IMAGES_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_VIDEO_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU))
                  )
               {
                  BIND_ACTION_LEFT(cbs, action_left_mainmenu);
               }
               else
               {
                  BIND_ACTION_LEFT(cbs, action_left_scroll);
               }
               break;
            case 136:
            case 133:
               if (
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HISTORY_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_ADD_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_NETPLAY_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_MUSIC_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_IMAGES_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_VIDEO_TAB)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_HORIZONTAL_MENU)) ||
                     string_is_equal(menu_label, msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB))
                  )
               {
                  BIND_ACTION_LEFT(cbs, action_left_mainmenu);
                  break;
               }
            case 132:
               BIND_ACTION_LEFT(cbs, action_left_video_gpu_index);
               break;
            case 142:
               BIND_ACTION_LEFT(cbs, playlist_association_left);
               break;
            case 141:
               BIND_ACTION_LEFT(cbs, playlist_label_display_mode_left);
               break;
            case 139:
               BIND_ACTION_LEFT(cbs, playlist_right_thumbnail_mode_left);
               break;
            case 140:
               BIND_ACTION_LEFT(cbs, playlist_left_thumbnail_mode_left);
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
