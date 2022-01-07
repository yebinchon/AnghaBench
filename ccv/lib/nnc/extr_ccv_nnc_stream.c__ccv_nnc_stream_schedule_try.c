
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ done; int context; } ;
typedef TYPE_1__ ccv_nnc_stream_task_t ;
struct TYPE_9__ {int active; scalar_t__ stream_wait_task_count; int mutex; int callee; int caller; TYPE_1__* head; int thread; } ;
typedef TYPE_2__ ccv_nnc_stream_scheduler_t ;


 int _ccv_nnc_stream_schedule_main ;
 int _ccv_nnc_stream_scheduler_delete_task (TYPE_2__* const,TYPE_1__* const) ;
 int _ccv_nnc_stream_task_done (TYPE_1__* const) ;
 int pthread_create (int *,int ,int ,TYPE_2__* const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int swapcontext (int *,int *) ;

__attribute__((used)) static void _ccv_nnc_stream_schedule_try(ccv_nnc_stream_scheduler_t* const scheduler)
{
 pthread_mutex_lock(&scheduler->mutex);
 if (scheduler->active)
 {
  pthread_mutex_unlock(&scheduler->mutex);
  return;
 }
 scheduler->active = 1;
 for (;;)
 {
  if (scheduler->head == 0 && scheduler->stream_wait_task_count == 0)
  {
   scheduler->active = 0;
   pthread_mutex_unlock(&scheduler->mutex);
   break;
  }
  if (scheduler->head == 0)
  {

   pthread_create(&scheduler->thread, 0, _ccv_nnc_stream_schedule_main, scheduler);
   pthread_mutex_unlock(&scheduler->mutex);
   break;
  }
  ccv_nnc_stream_task_t* const task = scheduler->head;
  _ccv_nnc_stream_scheduler_delete_task(scheduler, task);
  pthread_mutex_unlock(&scheduler->mutex);
  swapcontext(&scheduler->caller, &task->context);
  task->context = scheduler->callee;
  pthread_mutex_lock(&scheduler->mutex);
  if (task->done)
   _ccv_nnc_stream_task_done(task);
 }
}
