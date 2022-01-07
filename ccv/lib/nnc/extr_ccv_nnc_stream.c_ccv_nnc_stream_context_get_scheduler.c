
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wait; int notify; int mutex; } ;
typedef TYPE_1__ ccv_nnc_stream_scheduler_t ;
struct TYPE_6__ {TYPE_1__* scheduler; } ;
typedef TYPE_2__ ccv_nnc_stream_context_t ;


 scalar_t__ cccalloc (int,int) ;
 int pthread_cond_init (int *,int ) ;
 int pthread_mutex_init (int *,int ) ;

ccv_nnc_stream_scheduler_t* ccv_nnc_stream_context_get_scheduler(ccv_nnc_stream_context_t* const stream_context)
{
 ccv_nnc_stream_scheduler_t* scheduler = stream_context->scheduler;
 if (!scheduler)
 {
  stream_context->scheduler = scheduler = (ccv_nnc_stream_scheduler_t*)cccalloc(1, sizeof(ccv_nnc_stream_scheduler_t));
  pthread_mutex_init(&scheduler->mutex, 0);
  pthread_cond_init(&scheduler->notify, 0);
  pthread_cond_init(&scheduler->wait, 0);
 }
 return scheduler;
}
