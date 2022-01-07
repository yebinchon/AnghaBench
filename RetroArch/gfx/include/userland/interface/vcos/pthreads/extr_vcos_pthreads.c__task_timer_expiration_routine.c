
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* orig_task_timer_expiration_routine ) (int ) ;int orig_task_timer_context; } ;
typedef TYPE_1__ VCOS_THREAD_T ;


 int stub1 (int ) ;
 int vcos_assert (int (*) (int )) ;

__attribute__((used)) static void _task_timer_expiration_routine(void *cxt)
{
   VCOS_THREAD_T *thread = (VCOS_THREAD_T *)cxt;

   vcos_assert(thread->orig_task_timer_expiration_routine);
   thread->orig_task_timer_expiration_routine(thread->orig_task_timer_context);
   thread->orig_task_timer_expiration_routine = ((void*)0);
}
