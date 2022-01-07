
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct retro_disk_control_callback {scalar_t__ (* set_eject_state ) (int) ;int get_num_images; } ;
struct TYPE_3__ {int disk_control_cb; } ;
typedef TYPE_1__ rarch_system_info_t ;
typedef int msg ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_DISK_CLOSED ;
 int MSG_DISK_EJECTED ;
 int MSG_FAILED_TO ;
 int MSG_VIRTUAL_DISK_TRAY ;
 int RARCH_ERR (char*,char*) ;
 int RARCH_LOG (char*,char*) ;
 char* msg_hash_to_str (int ) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 TYPE_1__ runloop_system ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int string_is_empty (char*) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static void command_event_disk_control_set_eject(bool new_state, bool print_log)
{
   char msg[128];
   bool error = 0;
   const struct retro_disk_control_callback *control = ((void*)0);
   rarch_system_info_t *info = &runloop_system;

   msg[0] = '\0';

   if (info)
      control = (const struct retro_disk_control_callback*)&info->disk_control_cb;

   if (!control || !control->get_num_images)
      return;

   if (control->set_eject_state(new_state))
      snprintf(msg, sizeof(msg), "%s %s",
            new_state ?
            msg_hash_to_str(MSG_DISK_EJECTED) :
            msg_hash_to_str(MSG_DISK_CLOSED),
            msg_hash_to_str(MSG_VIRTUAL_DISK_TRAY));
   else
   {
      error = 1;
      snprintf(msg, sizeof(msg), "%s %s %s",
            msg_hash_to_str(MSG_FAILED_TO),
            new_state ? "eject" : "close",
            msg_hash_to_str(MSG_VIRTUAL_DISK_TRAY));
   }

   if (!string_is_empty(msg))
   {
      if (error)
         RARCH_ERR("%s\n", msg);
      else
         RARCH_LOG("%s\n", msg);


      if (print_log)
         runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
}
