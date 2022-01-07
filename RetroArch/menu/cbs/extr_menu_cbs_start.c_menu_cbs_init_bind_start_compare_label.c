
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_START (TYPE_1__*,int ) ;
 int MSG_UNKNOWN ;
 int action_start_cheat_num_passes ;
 int action_start_load_core ;
 int action_start_netplay_mitm_server ;
 int action_start_playlist_association ;
 int action_start_playlist_label_display_mode ;
 int action_start_playlist_left_thumbnail_mode ;
 int action_start_playlist_right_thumbnail_mode ;
 int action_start_remap_file_load ;
 int action_start_shader_filter_pass ;
 int action_start_shader_num_passes ;
 int action_start_shader_pass ;
 int action_start_shader_preset ;
 int action_start_shader_scale_pass ;
 int action_start_shader_watch_for_changes ;
 int action_start_video_filter_file_load ;
 int action_start_video_resolution ;

__attribute__((used)) static int menu_cbs_init_bind_start_compare_label(menu_file_list_cbs_t *cbs)
{
   if (cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case 142:
            BIND_ACTION_START(cbs, action_start_load_core);
            break;
         case 129:
            BIND_ACTION_START(cbs, action_start_shader_preset);
            break;
         case 136:
            BIND_ACTION_START(cbs, action_start_remap_file_load);
            break;
         case 133:
            BIND_ACTION_START(cbs, action_start_video_filter_file_load);
            break;
         case 130:



            break;
         case 128:



            break;
         case 132:



            break;
         case 134:



            break;
         case 131:



            break;
         case 143:
            BIND_ACTION_START(cbs, action_start_cheat_num_passes);
            break;
         case 135:
            BIND_ACTION_START(cbs, action_start_video_resolution);
            break;
         case 141:
            BIND_ACTION_START(cbs, action_start_netplay_mitm_server);
            break;
         case 140:
            BIND_ACTION_START(cbs, action_start_playlist_association);
            break;
         case 139:
            BIND_ACTION_START(cbs, action_start_playlist_label_display_mode);
            break;
         case 137:
            BIND_ACTION_START(cbs, action_start_playlist_right_thumbnail_mode);
            break;
         case 138:
            BIND_ACTION_START(cbs, action_start_playlist_left_thumbnail_mode);
            break;
         default:
            return -1;
      }
   }

   return 0;
}
