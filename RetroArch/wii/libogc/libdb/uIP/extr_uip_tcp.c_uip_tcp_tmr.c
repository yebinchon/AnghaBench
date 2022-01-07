
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uip_tcp_fasttmr () ;
 int uip_tcp_slowtmr () ;
 int uip_tcp_timer ;

void uip_tcp_tmr()
{
 uip_tcp_fasttmr();

 if(++uip_tcp_timer&1) uip_tcp_slowtmr();
}
