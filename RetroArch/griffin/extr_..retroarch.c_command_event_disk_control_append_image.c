
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct retro_game_info {char const* path; int member_0; } ;
struct retro_disk_control_callback {unsigned int (* get_num_images ) () ;int (* replace_image_index ) (unsigned int,struct retro_game_info*) ;int (* add_image_index ) () ;} ;
struct TYPE_3__ {int disk_control_cb; } ;
typedef TYPE_1__ rarch_system_info_t ;
typedef int msg ;


 int CMD_EVENT_AUTOSAVE_INIT ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_APPENDED_DISK ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_PATH_NAMES ;
 int RARCH_PATH_SUBSYSTEM ;
 int command_event (int ,int *) ;
 int command_event_disk_control_set_eject (int,int) ;
 int command_event_disk_control_set_index (unsigned int) ;
 char* msg_hash_to_str (int ) ;
 int path_fill_names () ;
 scalar_t__ path_is_empty (int ) ;
 int path_set (int ,char const*) ;
 int retroarch_autosave_deinit () ;
 int runloop_msg_queue_push (char*,int ,int,int,int *,int ,int ) ;
 TYPE_1__ runloop_system ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int stub1 () ;
 unsigned int stub2 () ;
 int stub3 (unsigned int,struct retro_game_info*) ;

__attribute__((used)) static bool command_event_disk_control_append_image(const char *path)
{
   unsigned new_idx;
   char msg[128];
   struct retro_game_info info = {0};
   const struct retro_disk_control_callback *control = ((void*)0);
   rarch_system_info_t *sysinfo = &runloop_system;

   msg[0] = '\0';

   if (sysinfo)
      control = (const struct retro_disk_control_callback*)
         &sysinfo->disk_control_cb;

   if (!control)
      return 0;

   command_event_disk_control_set_eject(1, 0);

   control->add_image_index();
   new_idx = control->get_num_images();
   if (!new_idx)
      return 0;
   new_idx--;

   info.path = path;
   control->replace_image_index(new_idx, &info);

   snprintf(msg, sizeof(msg), "%s: %s", msg_hash_to_str(MSG_APPENDED_DISK), path);
   RARCH_LOG("%s\n", msg);
   runloop_msg_queue_push(msg, 0, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);






   if (path_is_empty(RARCH_PATH_SUBSYSTEM))
   {




      path_set(RARCH_PATH_NAMES, path);
      path_fill_names();
   }

   command_event(CMD_EVENT_AUTOSAVE_INIT, ((void*)0));
   command_event_disk_control_set_index(new_idx);
   command_event_disk_control_set_eject(0, 0);

   return 1;
}
