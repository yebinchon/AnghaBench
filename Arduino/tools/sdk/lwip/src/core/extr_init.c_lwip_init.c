
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEMP_NUM_TCP_PCB ;
 int TCP_MAXRTX ;
 int TCP_MSS ;
 int TCP_SYNMAXRTX ;
 int TCP_WND ;
 int _bss_end ;
 int autoip_init () ;
 int dns_init () ;
 int etharp_init () ;
 int igmp_init () ;
 int ip_init () ;
 int lwip_sanity_check () ;
 int lwip_socket_init () ;
 int mem_init (int *) ;
 int memp_init () ;
 int netif_init () ;
 int pbuf_init () ;
 int raw_init () ;
 int snmp_init () ;
 int stats_init () ;
 int sys_init () ;
 int sys_timeouts_init () ;
 int tcp_init () ;
 int udp_init () ;

void
lwip_init(void)
{
  MEMP_NUM_TCP_PCB = 5;
  TCP_WND = (4 * TCP_MSS);
  TCP_MAXRTX = 12;
  TCP_SYNMAXRTX = 6;


  lwip_sanity_check();


  stats_init();

  sys_init();




  memp_init();

  pbuf_init();

  netif_init();




  ip_init();
}
