
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* retro_task_queue_msg_t ;
struct TYPE_4__ {int (* init ) () ;void* msg_push; } ;


 TYPE_1__* impl_current ;
 TYPE_1__ impl_regular ;
 TYPE_1__ impl_threaded ;
 void* msg_push_bak ;
 int stub1 () ;
 int task_threaded_enable ;

void task_queue_init(bool threaded, retro_task_queue_msg_t msg_push)
{
   impl_current = &impl_regular;
   msg_push_bak = msg_push;

   impl_current->msg_push = msg_push;
   impl_current->init();
}
