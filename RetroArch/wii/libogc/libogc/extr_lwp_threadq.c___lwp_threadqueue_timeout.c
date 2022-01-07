
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sync_state; int timeout_state; } ;
typedef TYPE_2__ lwp_thrqueue ;
struct TYPE_7__ {TYPE_2__* queue; int ret_code; } ;
struct TYPE_9__ {TYPE_1__ wait; } ;
typedef TYPE_3__ lwp_cntrl ;


 scalar_t__ LWP_THREADQ_SATISFIED ;
 scalar_t__ LWP_THREADQ_SYNCHRONIZED ;
 scalar_t__ LWP_THREADQ_TIMEOUT ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 scalar_t__ __lwp_thread_isexec (TYPE_3__*) ;
 int __lwp_threadqueue_extract (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void __lwp_threadqueue_timeout(void *usr_data)
{
 lwp_cntrl *thethread;
 lwp_thrqueue *thequeue;

 __lwp_thread_dispatchdisable();
 thethread = (lwp_cntrl*)usr_data;
 thequeue = thethread->wait.queue;
 if(thequeue->sync_state!=LWP_THREADQ_SYNCHRONIZED && __lwp_thread_isexec(thethread)) {
  if(thequeue->sync_state!=LWP_THREADQ_SATISFIED) thequeue->sync_state = LWP_THREADQ_TIMEOUT;
 } else {
  thethread->wait.ret_code = thethread->wait.queue->timeout_state;
  __lwp_threadqueue_extract(thethread->wait.queue,thethread);
 }
 __lwp_thread_dispatchunnest();
}
