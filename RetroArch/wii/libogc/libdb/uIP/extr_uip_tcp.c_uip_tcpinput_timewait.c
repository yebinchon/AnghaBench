
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uip_tcp_pcb {scalar_t__ rcv_nxt; } ;
typedef int s8_t ;


 scalar_t__ UIP_TCP_SEQ_GT (scalar_t__,scalar_t__) ;
 scalar_t__ uip_seqno ;
 int uip_tcp_acknow (struct uip_tcp_pcb*) ;
 scalar_t__ uip_tcplen ;
 int uip_tcpoutput (struct uip_tcp_pcb*) ;

__attribute__((used)) static s8_t uip_tcpinput_timewait(struct uip_tcp_pcb *pcb)
{
 if(UIP_TCP_SEQ_GT(uip_seqno+uip_tcplen,pcb->rcv_nxt)) pcb->rcv_nxt = uip_seqno+uip_tcplen;
 if(uip_tcplen>0) {
  uip_tcp_acknow(pcb);
 }

 return uip_tcpoutput(pcb);
}
