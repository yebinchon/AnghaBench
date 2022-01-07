
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_GET_VALUE (TYPE_1__*,int ) ;
 int MSG_UNKNOWN ;
 int menu_action_setting_disp_set_label ;
 int menu_action_setting_disp_set_label_cheat_num_passes ;
 int menu_action_setting_disp_set_label_configurations ;
 int menu_action_setting_disp_set_label_menu_more ;
 int menu_action_setting_disp_set_label_menu_video_resolution ;
 int menu_action_setting_disp_set_label_playlist_associations ;
 int menu_action_setting_disp_set_label_playlist_label_display_mode ;
 int menu_action_setting_disp_set_label_playlist_left_thumbnail_mode ;
 int menu_action_setting_disp_set_label_playlist_right_thumbnail_mode ;
 int menu_action_setting_disp_set_label_remap_file_load ;
 int menu_action_setting_disp_set_label_shader_default_filter ;
 int menu_action_setting_disp_set_label_shader_filter_pass ;
 int menu_action_setting_disp_set_label_shader_num_passes ;
 int menu_action_setting_disp_set_label_shader_pass ;
 int menu_action_setting_disp_set_label_shader_scale_pass ;
 int menu_action_setting_disp_set_label_shader_watch_for_changes ;
 int menu_action_setting_disp_set_label_wifi_is_online ;

__attribute__((used)) static int menu_cbs_init_bind_get_string_representation_compare_label(
      menu_file_list_cbs_t *cbs)
{
   if (cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case 138:
         case 178:
         case 160:
         case 159:
         case 177:
         case 148:
         case 154:
         case 156:
         case 176:
         case 128:
         case 155:
            BIND_ACTION_GET_VALUE(cbs, menu_action_setting_disp_set_label);
            break;
         case 171:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_wifi_is_online);
            break;
         case 174:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_cheat_num_passes);
            break;
         case 147:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_remap_file_load);
            break;
         case 136:




            break;
         case 129:




            break;
         case 135:




            break;
         case 141:




            break;
         case 133:




            break;
         case 137:




            break;
         case 172:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_configurations);
            break;
         case 143:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_menu_video_resolution);
            break;
         case 153:
         case 158:
         case 163:
         case 162:
         case 166:
         case 170:
         case 142:
         case 134:
         case 132:
         case 131:
         case 130:
         case 175:
         case 161:
         case 169:
         case 164:
         case 165:
         case 146:
         case 173:
         case 145:
         case 139:
         case 167:
         case 168:
         case 140:
         case 180:
         case 179:
         case 144:
         case 157:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_menu_more);
            break;
         case 152:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_playlist_associations);
            break;
         case 151:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_playlist_label_display_mode);
            break;
         case 149:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_playlist_right_thumbnail_mode);
            break;
         case 150:
            BIND_ACTION_GET_VALUE(cbs,
                  menu_action_setting_disp_set_label_playlist_left_thumbnail_mode);
            break;
         default:
            return - 1;
      }
   }
   else
   {
      return -1;
   }

   return 0;
}
