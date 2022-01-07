
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef void* s64 ;


 scalar_t__ UIP_TCP_TMR_INTERVAL ;
 scalar_t__ diff_msec (void*,void*) ;
 void* gettime () ;
 void* tcpip_time ;
 int uip_bba_poll (int *) ;
 int * uip_netif_default ;
 scalar_t__ uip_tcp_active_pcbs ;
 int uip_tcp_tmr () ;
 scalar_t__ uip_tcp_tw_pcbs ;

__attribute__((used)) static void __tcpip_poll()
{
 u32 diff;
 s64 now;

 if(uip_netif_default==((void*)0)) return;

 uip_bba_poll(uip_netif_default);

 if(tcpip_time && (uip_tcp_active_pcbs || uip_tcp_tw_pcbs)) {
  now = gettime();
  diff = diff_msec(tcpip_time,now);
  if(diff>=UIP_TCP_TMR_INTERVAL) {
   uip_tcp_tmr();
   tcpip_time = gettime();
  }
 } else
  tcpip_time = 0;
}
