
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lwp_t ;
struct TYPE_3__ {int cur_state; } ;
typedef TYPE_1__ lwp_cntrl ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* __lwp_cntrl_open (int ) ;
 scalar_t__ __lwp_statesuspended (int ) ;
 int __lwp_thread_dispatchenable () ;

BOOL LWP_ThreadIsSuspended(lwp_t thethread)
{
 BOOL state;
 lwp_cntrl *lwp_thread;

 lwp_thread = __lwp_cntrl_open(thethread);
   if(!lwp_thread) return FALSE;

 state = (__lwp_statesuspended(lwp_thread->cur_state) ? TRUE : FALSE);

 __lwp_thread_dispatchenable();
 return state;
}
