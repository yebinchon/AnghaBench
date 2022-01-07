
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lwp_cntrl ;


 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_thread_unblock (int *) ;
 int kprintf (char*,int *) ;

void __lwp_thread_delayended(void *arg)
{
 lwp_cntrl *thethread = (lwp_cntrl*)arg;



 if(!thethread) return;

 __lwp_thread_dispatchdisable();
 __lwp_thread_unblock(thethread);
 __lwp_thread_dispatchunnest();
}
