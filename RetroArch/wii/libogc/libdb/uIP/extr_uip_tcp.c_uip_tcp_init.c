
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * listen_pcbs; } ;


 int memb_init (int *) ;
 int uip_listen_tcp_pcbs ;
 int * uip_tcp_active_pcbs ;
 TYPE_1__ uip_tcp_listen_pcbs ;
 int uip_tcp_pcbs ;
 int uip_tcp_segs ;
 scalar_t__ uip_tcp_ticks ;
 scalar_t__ uip_tcp_timer ;
 int * uip_tcp_tw_pcbs ;

void uip_tcp_init()
{
 memb_init(&uip_tcp_pcbs);
 memb_init(&uip_listen_tcp_pcbs);
 memb_init(&uip_tcp_segs);

 uip_tcp_listen_pcbs.listen_pcbs = ((void*)0);
 uip_tcp_active_pcbs = ((void*)0);
 uip_tcp_tw_pcbs = ((void*)0);

 uip_tcp_ticks = 0;
 uip_tcp_timer = 0;
}
