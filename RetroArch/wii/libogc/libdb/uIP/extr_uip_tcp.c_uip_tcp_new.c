
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int dummy; } ;


 int UIP_TCP_PRIO_NORMAL ;
 struct uip_tcp_pcb* uip_tcp_pcballoc (int ) ;

struct uip_tcp_pcb* uip_tcp_new()
{
 return uip_tcp_pcballoc(UIP_TCP_PRIO_NORMAL);
}
