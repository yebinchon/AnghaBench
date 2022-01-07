
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ discord_userdata_t ;


 int CMD_EVENT_DISCORD_UPDATE ;
 int DISCORD_PRESENCE_GAME_PAUSED ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_PAUSED ;
 int MSG_UNPAUSED ;
 int RARCH_LOG (char*,int ) ;
 int command_event (int ,TYPE_1__*) ;
 int menu_widgets_ai_service_overlay_get_state () ;
 int menu_widgets_ai_service_overlay_unload () ;
 scalar_t__ menu_widgets_inited ;
 int menu_widgets_paused ;
 int msg_hash_to_str (int ) ;
 int runloop_idle ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int runloop_paused ;
 int video_driver_cached_frame () ;

__attribute__((used)) static void retroarch_pause_checks(void)
{



   bool is_paused = runloop_paused;
   bool is_idle = runloop_idle;

   if (is_paused)
   {
      RARCH_LOG("%s\n", msg_hash_to_str(MSG_PAUSED));






         runloop_msg_queue_push(msg_hash_to_str(MSG_PAUSED), 1,
               1, 1,
               ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);


      if (!is_idle)
         video_driver_cached_frame();





   }
   else
   {




      RARCH_LOG("%s\n", msg_hash_to_str(MSG_UNPAUSED));

   }





}
