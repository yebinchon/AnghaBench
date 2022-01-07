
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int task_timer; scalar_t__ task_timer_created; int suspend; } ;
typedef TYPE_1__ VCOS_THREAD_T ;


 int vcos_semaphore_delete (int *) ;
 int vcos_timer_delete (int *) ;

__attribute__((used)) static void vcos_thread_cleanup(VCOS_THREAD_T *thread)
{
   vcos_semaphore_delete(&thread->suspend);
   if (thread->task_timer_created)
   {
      vcos_timer_delete(&thread->task_timer);
   }
}
