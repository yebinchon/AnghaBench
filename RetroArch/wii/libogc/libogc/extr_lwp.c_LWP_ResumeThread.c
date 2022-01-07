
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int s32 ;
typedef int lwp_t ;
struct TYPE_4__ {int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;


 int LWP_NOT_SUSPENDED ;
 int LWP_SUCCESSFUL ;
 int TRUE ;
 TYPE_1__* __lwp_cntrl_open (int ) ;
 scalar_t__ __lwp_statesuspended (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_thread_resume (TYPE_1__*,int ) ;

s32 LWP_ResumeThread(lwp_t thethread)
{
 lwp_cntrl *lwp_thread;

 lwp_thread = __lwp_cntrl_open(thethread);
 if(!lwp_thread) return -1;

 if(__lwp_statesuspended(lwp_thread->cur_state)) {
  __lwp_thread_resume(lwp_thread,TRUE);
  __lwp_thread_dispatchenable();
  return LWP_SUCCESSFUL;
 }
 __lwp_thread_dispatchenable();
 return LWP_NOT_SUSPENDED;
}
