
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gettime () ;
 scalar_t__ tcpip_time ;
 scalar_t__ uip_tcp_active_pcbs ;
 scalar_t__ uip_tcp_tw_pcbs ;

void tcpip_tmr_needed()
{
 if(!tcpip_time && (uip_tcp_active_pcbs || uip_tcp_tw_pcbs)) {
  tcpip_time = gettime();
 }
}
