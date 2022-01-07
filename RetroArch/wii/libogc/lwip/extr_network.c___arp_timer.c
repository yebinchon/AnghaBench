
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int arp_time_cntrl ;
 scalar_t__ etharp_tmr ;
 int net_arp_ticks ;
 int net_callback (int ,void*) ;
 int tmr_callback ;

__attribute__((used)) static void __arp_timer(void *arg)
{
 __lwp_thread_dispatchdisable();
 net_callback(tmr_callback,(void*)etharp_tmr);
 __lwp_wd_insert_ticks(&arp_time_cntrl,net_arp_ticks);
 __lwp_thread_dispatchunnest();
}
