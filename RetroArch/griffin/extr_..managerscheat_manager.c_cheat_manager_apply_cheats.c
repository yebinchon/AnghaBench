
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int enabled; int code; int index; } ;
typedef TYPE_2__ retro_ctx_cheat_info_t ;
struct TYPE_7__ {unsigned int size; TYPE_1__* cheats; } ;
struct TYPE_5__ {scalar_t__ handler; int code; scalar_t__ state; } ;


 scalar_t__ CHEAT_HANDLER_TYPE_EMU ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_APPLYING_CHEAT ;
 int RARCH_LOG (char*,int ) ;
 TYPE_4__ cheat_manager_state ;
 int core_reset_cheat () ;
 int core_set_cheat (TYPE_2__*) ;
 int msg_hash_to_str (int ) ;
 int rcheevos_apply_cheats (int*) ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;
 int string_is_empty (int ) ;

void cheat_manager_apply_cheats(void)
{




   unsigned i, idx = 0;

   if (!cheat_manager_state.cheats)
      return;

   core_reset_cheat();

   for (i = 0; i < cheat_manager_state.size; i++)
   {
      if (cheat_manager_state.cheats[i].state && cheat_manager_state.cheats[i].handler == CHEAT_HANDLER_TYPE_EMU)
      {
         retro_ctx_cheat_info_t cheat_info;

         cheat_info.index = idx++;
         cheat_info.enabled = 1;
         cheat_info.code = cheat_manager_state.cheats[i].code;

         if (!string_is_empty(cheat_info.code))
            core_set_cheat(&cheat_info);
      }
   }

   if (cheat_manager_state.size > 0)
   {
      runloop_msg_queue_push(msg_hash_to_str(MSG_APPLYING_CHEAT), 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      RARCH_LOG("%s\n", msg_hash_to_str(MSG_APPLYING_CHEAT));
   }





}
