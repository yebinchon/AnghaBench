
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int net_tcp_ticks ;
 int printf (char*) ;
 scalar_t__ tcp_active_pcbs ;
 int tcp_timer_active ;
 int tcp_timer_cntrl ;
 scalar_t__ tcp_tw_pcbs ;

void tcp_timer_needed(void)
{



 if(!tcp_timer_active && (tcp_active_pcbs || tcp_tw_pcbs)) {
  tcp_timer_active = 1;
  __lwp_wd_insert_ticks(&tcp_timer_cntrl,net_tcp_ticks);
 }
}
