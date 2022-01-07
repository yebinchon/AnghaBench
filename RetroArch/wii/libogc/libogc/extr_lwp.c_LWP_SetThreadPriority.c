
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ lwp_t ;
typedef int lwp_cntrl ;


 scalar_t__ LWP_GetSelf () ;
 scalar_t__ LWP_THREAD_NULL ;
 int TRUE ;
 int * __lwp_cntrl_open (scalar_t__) ;
 int __lwp_priotocore (int ) ;
 int __lwp_thread_changepriority (int *,int ,int ) ;
 int __lwp_thread_dispatchenable () ;

void LWP_SetThreadPriority(lwp_t thethread,u32 prio)
{
 lwp_cntrl *lwp_thread;

 if(thethread==LWP_THREAD_NULL) thethread = LWP_GetSelf();

 lwp_thread = __lwp_cntrl_open(thethread);
 if(!lwp_thread) return;

 __lwp_thread_changepriority(lwp_thread,__lwp_priotocore(prio),TRUE);
 __lwp_thread_dispatchenable();
}
