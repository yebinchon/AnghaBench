
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 scalar_t__ dhcp_fine_tmr ;
 int dhcp_finetimer_cntrl ;
 int net_callback (int ,void*) ;
 int net_dhcpfine_ticks ;
 int tmr_callback ;

__attribute__((used)) static void __dhcpfine_timer(void *arg)
{
 __lwp_thread_dispatchdisable();
 net_callback(tmr_callback,(void*)dhcp_fine_tmr);
 __lwp_wd_insert_ticks(&dhcp_finetimer_cntrl,net_dhcpfine_ticks);
 __lwp_thread_dispatchunnest();
}
