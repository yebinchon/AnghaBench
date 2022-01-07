
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int msg ;
struct TYPE_5__ {scalar_t__ size; TYPE_1__* cheats; } ;
typedef TYPE_2__ cheat_manager_t ;
struct TYPE_4__ {char* desc; char* code; scalar_t__ state; } ;


 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int RARCH_LOG (char*,char*) ;
 int runloop_msg_queue_push (char*,int,int,int,int *,int ,int ) ;
 int snprintf (char*,int,char*,unsigned int,char*,char*) ;

void cheat_manager_update(cheat_manager_t *handle, unsigned handle_idx)
{
   char msg[256];

   if (!handle || !handle->cheats || handle->size == 0)
      return;

   snprintf(msg, sizeof(msg), "Cheat: #%u [%s]: %s",
         handle_idx, handle->cheats[handle_idx].state ? "ON" : "OFF",
         (handle->cheats[handle_idx].desc != ((void*)0)) ?
         (handle->cheats[handle_idx].desc) : (handle->cheats[handle_idx].code)
         );
   runloop_msg_queue_push(msg, 1, 180, 1, ((void*)0), MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   RARCH_LOG("%s\n", msg);
}
