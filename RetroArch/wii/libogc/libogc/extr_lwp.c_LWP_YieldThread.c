
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_thread_yield () ;

void LWP_YieldThread()
{
 __lwp_thread_dispatchdisable();
 __lwp_thread_yield();
 __lwp_thread_dispatchenable();
}
