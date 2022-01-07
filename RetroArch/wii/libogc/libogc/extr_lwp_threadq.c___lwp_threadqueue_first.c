
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mode; } ;
typedef TYPE_1__ lwp_thrqueue ;
typedef int lwp_cntrl ;




 int * __lwp_threadqueue_firstfifo (TYPE_1__*) ;
 int * __lwp_threadqueue_firstpriority (TYPE_1__*) ;

lwp_cntrl* __lwp_threadqueue_first(lwp_thrqueue *queue)
{
 lwp_cntrl *ret;

 switch(queue->mode) {
  case 129:
   ret = __lwp_threadqueue_firstfifo(queue);
   break;
  case 128:
   ret = __lwp_threadqueue_firstpriority(queue);
   break;
  default:
   ret = ((void*)0);
   break;
 }

 return ret;
}
