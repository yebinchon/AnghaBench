
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int title; int callback; int handler; int * state; int type; } ;
typedef TYPE_1__ retro_task_t ;
typedef int retro_task_callback_t ;


 int MSG_SCANNING_WIRELESS_NETWORKS ;
 int TASK_TYPE_BLOCKING ;
 int msg_hash_to_str (int ) ;
 int strdup (int ) ;
 TYPE_1__* task_init () ;
 int task_queue_push (TYPE_1__*) ;
 int task_wifi_scan_handler ;

bool task_push_wifi_scan(retro_task_callback_t cb)
{
   retro_task_t *task = task_init();

   if (!task)
      return 0;



   task->type = TASK_TYPE_BLOCKING;
   task->state = ((void*)0);
   task->handler = task_wifi_scan_handler;
   task->callback = cb;
   task->title = strdup(msg_hash_to_str(
                           MSG_SCANNING_WIRELESS_NETWORKS));

   task_queue_push(task);

   return 1;
}
