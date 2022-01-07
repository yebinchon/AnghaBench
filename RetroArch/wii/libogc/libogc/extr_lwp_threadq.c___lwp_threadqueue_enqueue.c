
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_15__ {int mode; int state; } ;
typedef TYPE_2__ lwp_thrqueue ;
struct TYPE_14__ {int id; } ;
struct TYPE_16__ {int timer; TYPE_1__ object; } ;
typedef TYPE_3__ lwp_cntrl ;




 int __lwp_thread_setstate (TYPE_3__*,int ) ;
 int __lwp_threadqueue_enqueuefifo (TYPE_2__*,TYPE_3__*,int ) ;
 int __lwp_threadqueue_enqueuepriority (TYPE_2__*,TYPE_3__*,int ) ;
 int __lwp_threadqueue_timeout ;
 int __lwp_wd_initialize (int *,int ,int ,TYPE_3__*) ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 TYPE_3__* _thr_executing ;
 int printf (char*,TYPE_2__*,TYPE_3__*,int) ;

void __lwp_threadqueue_enqueue(lwp_thrqueue *queue,u64 timeout)
{
 lwp_cntrl *thethread;

 thethread = _thr_executing;
 __lwp_thread_setstate(thethread,queue->state);

 if(timeout) {
  __lwp_wd_initialize(&thethread->timer,__lwp_threadqueue_timeout,thethread->object.id,thethread);
  __lwp_wd_insert_ticks(&thethread->timer,timeout);
 }




 switch(queue->mode) {
  case 129:
   __lwp_threadqueue_enqueuefifo(queue,thethread,timeout);
   break;
  case 128:
   __lwp_threadqueue_enqueuepriority(queue,thethread,timeout);
   break;
 }
}
