
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; } ;
typedef TYPE_1__ lwp_thrqueue ;
typedef int lwp_cntrl ;




 int __lwp_threadqueue_extractfifo (TYPE_1__*,int *) ;
 int __lwp_threadqueue_extractpriority (TYPE_1__*,int *) ;

void __lwp_threadqueue_extract(lwp_thrqueue *queue,lwp_cntrl *thethread)
{
 switch(queue->mode) {
  case 129:
   __lwp_threadqueue_extractfifo(queue,thethread);
   break;
  case 128:
   __lwp_threadqueue_extractpriority(queue,thethread);
   break;
 }

}
