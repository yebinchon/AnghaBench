
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VCOS_UNSIGNED ;
struct TYPE_4__ {void (* orig_task_timer_expiration_routine ) (void*) ;int task_timer_created; int task_timer; void* orig_task_timer_context; } ;
typedef TYPE_1__ VCOS_THREAD_T ;
typedef scalar_t__ VCOS_STATUS_T ;


 scalar_t__ VCOS_SUCCESS ;
 int _task_timer_expiration_routine ;
 int vcos_assert (int) ;
 TYPE_1__* vcos_thread_current () ;
 scalar_t__ vcos_timer_create (int *,int *,int ,TYPE_1__*) ;
 int vcos_timer_set (int *,int ) ;

void _vcos_task_timer_set(void (*pfn)(void*), void *cxt, VCOS_UNSIGNED ms)
{
   VCOS_THREAD_T *thread = vcos_thread_current();

   if (thread == ((void*)0))
      return;

   vcos_assert(thread->orig_task_timer_expiration_routine == ((void*)0));

   if (!thread->task_timer_created)
   {
      VCOS_STATUS_T st = vcos_timer_create(&thread->task_timer, ((void*)0),
                                _task_timer_expiration_routine, thread);
      (void)st;
      vcos_assert(st == VCOS_SUCCESS);
      thread->task_timer_created = 1;
   }

   thread->orig_task_timer_expiration_routine = pfn;
   thread->orig_task_timer_context = cxt;

   vcos_timer_set(&thread->task_timer, ms);
}
