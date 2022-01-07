
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int lwp_t ;
struct TYPE_4__ {int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;


 int LWP_ALREADY_SUSPENDED ;
 int LWP_SUCCESSFUL ;
 TYPE_1__* __lwp_cntrl_open (int ) ;
 int __lwp_statesuspended (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_thread_suspend (TYPE_1__*) ;

s32 LWP_SuspendThread(lwp_t thethread)
{
 lwp_cntrl *lwp_thread;

 lwp_thread = __lwp_cntrl_open(thethread);
 if(!lwp_thread) return -1;

 if(!__lwp_statesuspended(lwp_thread->cur_state)) {
  __lwp_thread_suspend(lwp_thread);
  __lwp_thread_dispatchenable();
  return LWP_SUCCESSFUL;
 }
 __lwp_thread_dispatchenable();
 return LWP_ALREADY_SUSPENDED;
}
