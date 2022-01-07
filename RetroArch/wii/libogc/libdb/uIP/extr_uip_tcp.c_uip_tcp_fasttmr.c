
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {int flags; struct uip_tcp_pcb* next; } ;


 int UIP_TF_ACK_DELAY ;
 int UIP_TF_ACK_NOW ;
 int uip_tcp_acknow (struct uip_tcp_pcb*) ;
 struct uip_tcp_pcb* uip_tcp_active_pcbs ;

void uip_tcp_fasttmr()
{
 struct uip_tcp_pcb *pcb;

 for(pcb=uip_tcp_active_pcbs;pcb!=((void*)0);pcb=pcb->next) {
  if(pcb->flags&UIP_TF_ACK_DELAY) {
   uip_tcp_acknow(pcb);
   pcb->flags &= ~(UIP_TF_ACK_DELAY|UIP_TF_ACK_NOW);
  }
 }
}
