
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ucontext_t ;
struct TYPE_5__ {scalar_t__ done; int context; TYPE_2__* super; } ;
typedef TYPE_1__ ccv_nnc_stream_task_t ;
struct TYPE_6__ {int mutex; int caller; int callee; } ;
typedef TYPE_2__ ccv_nnc_stream_scheduler_t ;


 int _ccv_nnc_stream_task_done (TYPE_1__* const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int swapcontext (int *,int *) ;

void ccv_nnc_stream_task_resume(ccv_nnc_stream_task_t* const task)
{
 ccv_nnc_stream_scheduler_t* const scheduler = task->super;
 ucontext_t old_context = scheduler->caller;
 swapcontext(&scheduler->caller, &task->context);
 task->context = scheduler->callee;
 scheduler->caller = old_context;
 if (task->done)
 {
  pthread_mutex_lock(&scheduler->mutex);
  _ccv_nnc_stream_task_done(task);
  pthread_mutex_unlock(&scheduler->mutex);
 }
}
