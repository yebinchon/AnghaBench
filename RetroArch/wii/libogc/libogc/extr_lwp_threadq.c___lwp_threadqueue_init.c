
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int * priority; int fifo; } ;
struct TYPE_6__ {int state; int mode; int timeout_state; TYPE_1__ queues; int sync_state; } ;
typedef TYPE_2__ lwp_thrqueue ;




 int LWP_THREADQ_NUM_PRIOHEADERS ;
 int LWP_THREADQ_SYNCHRONIZED ;
 int __lwp_queue_init_empty (int *) ;
 int printf (char*,TYPE_2__*,int,int,int) ;

void __lwp_threadqueue_init(lwp_thrqueue *queue,u32 mode,u32 state,u32 timeout_state)
{
 u32 index;

 queue->state = state;
 queue->mode = mode;
 queue->timeout_state = timeout_state;
 queue->sync_state = LWP_THREADQ_SYNCHRONIZED;



 switch(mode) {
  case 129:
   __lwp_queue_init_empty(&queue->queues.fifo);
   break;
  case 128:
   for(index=0;index<LWP_THREADQ_NUM_PRIOHEADERS;index++)
    __lwp_queue_init_empty(&queue->queues.priority[index]);
   break;
 }
}
