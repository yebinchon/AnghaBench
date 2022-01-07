
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_5__ {TYPE_4__* priority; } ;
struct TYPE_6__ {TYPE_1__ queues; } ;
typedef TYPE_2__ lwp_thrqueue ;
typedef int lwp_cntrl ;
struct TYPE_7__ {scalar_t__ first; } ;


 size_t LWP_THREADQ_NUM_PRIOHEADERS ;
 int __lwp_queue_isempty (TYPE_4__*) ;

lwp_cntrl* __lwp_threadqueue_firstpriority(lwp_thrqueue *queue)
{
 u32 index;

 for(index=0;index<LWP_THREADQ_NUM_PRIOHEADERS;index++) {
  if(!__lwp_queue_isempty(&queue->queues.priority[index]))
   return (lwp_cntrl*)queue->queues.priority[index].first;
 }
 return ((void*)0);
}
