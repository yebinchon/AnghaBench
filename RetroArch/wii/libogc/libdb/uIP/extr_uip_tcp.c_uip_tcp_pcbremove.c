
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {scalar_t__ state; int flags; } ;


 scalar_t__ UIP_CLOSED ;
 scalar_t__ UIP_LISTEN ;
 int UIP_TCP_RMV (struct uip_tcp_pcb**,struct uip_tcp_pcb*) ;
 int UIP_TF_ACK_DELAY ;
 int UIP_TF_ACK_NOW ;
 scalar_t__ UIP_TIME_WAIT ;
 int uip_tcp_pcbpurge (struct uip_tcp_pcb*) ;
 int uip_tcpoutput (struct uip_tcp_pcb*) ;

void uip_tcp_pcbremove(struct uip_tcp_pcb **pcblist,struct uip_tcp_pcb *pcb)
{
 UIP_TCP_RMV(pcblist,pcb);

 uip_tcp_pcbpurge(pcb);
 if(pcb->state!=UIP_TIME_WAIT &&
  pcb->state!=UIP_LISTEN &&
  pcb->flags&UIP_TF_ACK_DELAY) {
  pcb->flags |= UIP_TF_ACK_NOW;
  uip_tcpoutput(pcb);
 }
 pcb->state = UIP_CLOSED;
}
