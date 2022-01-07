
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int net_callback (int ,void*) ;
 int net_tcp_ticks ;
 int printf (char*,int,scalar_t__,scalar_t__) ;
 scalar_t__ tcp_active_pcbs ;
 int tcp_timer_active ;
 int tcp_timer_cntrl ;
 scalar_t__ tcp_tmr ;
 scalar_t__ tcp_tw_pcbs ;
 int tmr_callback ;

__attribute__((used)) static void __tcp_timer(void *arg)
{



 __lwp_thread_dispatchdisable();
 net_callback(tmr_callback,(void*)tcp_tmr);
 if (tcp_active_pcbs || tcp_tw_pcbs) {
  __lwp_wd_insert_ticks(&tcp_timer_cntrl,net_tcp_ticks);
 } else
  tcp_timer_active = 0;
 __lwp_thread_dispatchunnest();
}
