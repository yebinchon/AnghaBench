
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rewind_enable; scalar_t__ cheevos_hardcore_mode_enable; } ;
struct TYPE_5__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;


 int CHEEVOS_LOG (char*,char const*) ;
 int CMD_EVENT_RESET ;
 int CMD_EVENT_REWIND_DEINIT ;
 int CMD_EVENT_REWIND_INIT ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_CHEEVOS_HARDCORE_MODE_ENABLE ;
 int command_event (int ,int *) ;
 TYPE_2__* config_get_ptr () ;
 char* msg_hash_to_str (int ) ;
 int rcheevos_hardcore_paused ;
 int rcheevos_state_loaded_flag ;
 int runloop_msg_queue_push (char const*,int ,int,int,int *,int ,int ) ;

bool rcheevos_toggle_hardcore_mode(void)
{
   settings_t *settings = config_get_ptr();

   if (!settings)
      return 0;


   if ( settings->bools.cheevos_hardcore_mode_enable
       && !rcheevos_hardcore_paused)
   {
      const char *msg = msg_hash_to_str(
            MSG_CHEEVOS_HARDCORE_MODE_ENABLE);


      rcheevos_state_loaded_flag = 0;



      command_event(CMD_EVENT_RESET, ((void*)0));

      if (settings->bools.rewind_enable)
         command_event(CMD_EVENT_REWIND_DEINIT, ((void*)0));

      CHEEVOS_LOG("%s\n", msg);
      runloop_msg_queue_push(msg, 0, 3 * 60, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
   else
   {
      if (settings->bools.rewind_enable)
         command_event(CMD_EVENT_REWIND_INIT, ((void*)0));
   }

   return 1;
}
