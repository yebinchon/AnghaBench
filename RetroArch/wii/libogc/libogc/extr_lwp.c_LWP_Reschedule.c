
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __lwp_rotate_readyqueue (int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;

void LWP_Reschedule(u32 prio)
{
 __lwp_thread_dispatchdisable();
 __lwp_rotate_readyqueue(prio);
 __lwp_thread_dispatchenable();
}
