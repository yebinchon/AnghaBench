
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {scalar_t__ state; int * ooseq; int * unacked; int * unsent; } ;


 scalar_t__ UIP_CLOSED ;
 scalar_t__ UIP_LISTEN ;
 scalar_t__ UIP_TIME_WAIT ;
 int uip_tcpsegs_free (int *) ;

void uip_tcp_pcbpurge(struct uip_tcp_pcb *pcb)
{
 if(pcb->state!=UIP_CLOSED &&
  pcb->state!=UIP_TIME_WAIT &&
  pcb->state!=UIP_LISTEN) {
  uip_tcpsegs_free(pcb->ooseq);
  uip_tcpsegs_free(pcb->unsent);
  uip_tcpsegs_free(pcb->unacked);
  pcb->unsent = pcb->unacked = pcb->ooseq = ((void*)0);
 }
}
