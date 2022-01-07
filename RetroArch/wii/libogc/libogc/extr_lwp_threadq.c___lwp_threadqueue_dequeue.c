
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int mode; int sync_state; } ;
typedef TYPE_1__ lwp_thrqueue ;
typedef int lwp_cntrl ;




 int * __lwp_threadqueue_dequeuefifo (TYPE_1__*) ;
 int * __lwp_threadqueue_dequeuepriority (TYPE_1__*) ;
 int * _thr_executing ;
 int printf (char*,TYPE_1__*,int *,int,int) ;

lwp_cntrl* __lwp_threadqueue_dequeue(lwp_thrqueue *queue)
{
 lwp_cntrl *ret = ((void*)0);




 switch(queue->mode) {
  case 129:
   ret = __lwp_threadqueue_dequeuefifo(queue);
   break;
  case 128:
   ret = __lwp_threadqueue_dequeuepriority(queue);
   break;
  default:
   ret = ((void*)0);
   break;
 }



 return ret;
}
