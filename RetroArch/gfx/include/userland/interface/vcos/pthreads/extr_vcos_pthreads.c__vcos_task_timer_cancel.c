
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * orig_task_timer_expiration_routine; int task_timer; int task_timer_created; } ;
typedef TYPE_1__ VCOS_THREAD_T ;


 TYPE_1__* vcos_thread_current () ;
 int vcos_timer_cancel (int *) ;

void _vcos_task_timer_cancel(void)
{
   VCOS_THREAD_T *thread = vcos_thread_current();

   if (thread == ((void*)0) || !thread->task_timer_created)
     return;

   vcos_timer_cancel(&thread->task_timer);
   thread->orig_task_timer_expiration_routine = ((void*)0);
}
