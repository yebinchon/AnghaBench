
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_nnc_stream_task_t ;
struct TYPE_5__ {int mutex; int active; } ;
typedef TYPE_1__ ccv_nnc_stream_scheduler_t ;


 int _ccv_nnc_stream_schedule_try (TYPE_1__* const) ;
 int ccv_nnc_stream_scheduler_append_task (TYPE_1__* const,int * const) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ccv_nnc_stream_schedule_task(ccv_nnc_stream_scheduler_t* const scheduler, ccv_nnc_stream_task_t* const task)
{
 int activate_scheduler = 0;
 pthread_mutex_lock(&scheduler->mutex);

 ccv_nnc_stream_scheduler_append_task(scheduler, task);
 if (!scheduler->active)
  activate_scheduler = 1;
 pthread_mutex_unlock(&scheduler->mutex);
 if (activate_scheduler)
  _ccv_nnc_stream_schedule_try(scheduler);
}
