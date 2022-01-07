
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uip_tcpseg {TYPE_1__* tcphdr; struct uip_tcpseg* next; } ;
struct uip_tcp_pcb {int nrtx; struct uip_tcpseg* unsent; int snd_nxt; struct uip_tcpseg* unacked; } ;
struct TYPE_2__ {int seqno; } ;


 int ntohl (int ) ;
 int uip_tcpoutput (struct uip_tcp_pcb*) ;

void uip_tcp_rexmit_rto(struct uip_tcp_pcb *pcb)
{
 struct uip_tcpseg *seg;

 if(pcb->unacked==((void*)0)) return;

 for(seg=pcb->unacked;seg->next!=((void*)0);seg=seg->next);

 seg->next = pcb->unsent;
 pcb->unsent = pcb->unacked;
 pcb->unacked = ((void*)0);

 pcb->snd_nxt = ntohl(pcb->unsent->tcphdr->seqno);
 pcb->nrtx++;

 uip_tcpoutput(pcb);
}
