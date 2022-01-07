
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mutex; int notify; scalar_t__ active; } ;
typedef TYPE_1__ ccv_nnc_stream_scheduler_t ;
struct TYPE_6__ {int type; TYPE_1__* scheduler; } ;
typedef TYPE_2__ ccv_nnc_stream_context_t ;


 scalar_t__ CCV_STREAM_CONTEXT_GPU ;
 scalar_t__ CCV_STREAM_GET_CONTEXT (int ) ;
 int ccv_nnc_synchronize_stream_context (TYPE_2__ const* const) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void ccv_nnc_stream_context_wait(const ccv_nnc_stream_context_t* const stream_context)
{
 if (!stream_context)
  return;
 ccv_nnc_stream_scheduler_t* const scheduler = stream_context->scheduler;
 if (scheduler)
 {
  pthread_mutex_lock(&scheduler->mutex);
  while (scheduler->active)
   pthread_cond_wait(&scheduler->notify, &scheduler->mutex);
  pthread_mutex_unlock(&scheduler->mutex);
 }




}
