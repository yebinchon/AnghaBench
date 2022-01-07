
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int frame_time_counter_reset_after_load_state; int frame_time_counter_reset_after_save_state; } ;
struct TYPE_10__ {int state_slot; } ;
struct TYPE_13__ {TYPE_3__ bools; TYPE_1__ ints; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_5__ retro_ctx_size_info_t ;
typedef int msg ;
struct TYPE_11__ {char* savestate; } ;
struct TYPE_15__ {TYPE_2__ name; } ;
typedef TYPE_6__ global_t ;






 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CORE_DOES_NOT_SUPPORT_SAVESTATES ;
 int RARCH_LOG (char*,char*) ;
 int RARCH_NETPLAY_CTL_LOAD_SAVESTATE ;
 int command_event_undo_load_state (char*,int) ;
 int command_event_undo_save_state (char*,int) ;
 TYPE_4__* configuration_settings ;
 int content_load_state (char*,int,int) ;
 int content_save_state (char*,int,int) ;
 int core_serialize_size (TYPE_5__*) ;
 int fill_pathname_join_delim (char*,char const*,char*,char,size_t) ;
 int free (char*) ;
 TYPE_6__ g_extern ;
 scalar_t__ malloc (size_t) ;
 char const* msg_hash_to_str (int ) ;
 int netplay_driver_ctl (int ,int *) ;
 int rcheevos_hardcore_active ;
 int rcheevos_state_loaded_flag ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,size_t,char*,char const*,int) ;
 int strlcpy (char*,char const*,int) ;
 int video_driver_frame_time_count ;

__attribute__((used)) static bool command_event_main_state(unsigned cmd)
{
   retro_ctx_size_info_t info;
   char msg[128];
   size_t state_path_size = 16384 * sizeof(char);
   char *state_path = (char*)malloc(state_path_size);
   const global_t *global = &g_extern;
   bool ret = 0;
   bool push_msg = 1;

   state_path[0] = msg[0] = '\0';

   if (global)
   {
      settings_t *settings = configuration_settings;
      int state_slot = settings->ints.state_slot;
      const char *name_savestate = global->name.savestate;

      if (state_slot > 0)
         snprintf(state_path, state_path_size, "%s%d",
               name_savestate, state_slot);
      else if (state_slot < 0)
         fill_pathname_join_delim(state_path,
               name_savestate, "auto", '.', state_path_size);
      else
         strlcpy(state_path, name_savestate, state_path_size);
   }

   core_serialize_size(&info);

   if (info.size)
   {
      switch (cmd)
      {
         case 130:
            content_save_state(state_path, 1, 0);
            {
               settings_t *settings = configuration_settings;
               if (settings->bools.frame_time_counter_reset_after_save_state)
                  video_driver_frame_time_count = 0;
            }
            ret = 1;
            push_msg = 0;
            break;
         case 131:
            if (content_load_state(state_path, 0, 0))
            {




               ret = 1;



               {
                  settings_t *settings = configuration_settings;
                  if (settings->bools.frame_time_counter_reset_after_load_state)
                     video_driver_frame_time_count = 0;
               }
            }
            push_msg = 0;
            break;
         case 129:
            command_event_undo_load_state(msg, sizeof(msg));
            ret = 1;
            break;
         case 128:
            command_event_undo_save_state(msg, sizeof(msg));
            ret = 1;
            break;
      }
   }
   else
      strlcpy(msg, msg_hash_to_str(
               MSG_CORE_DOES_NOT_SUPPORT_SAVESTATES), sizeof(msg));

   if (push_msg)
      runloop_msg_queue_push(msg, 2, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   RARCH_LOG("%s\n", msg);

   free(state_path);
   return ret;
}
