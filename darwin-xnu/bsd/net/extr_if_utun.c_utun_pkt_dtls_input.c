
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utun_pcb {int dummy; } ;
typedef int protocol_family_t ;
typedef int mbuf_t ;



int
utun_pkt_dtls_input(struct utun_pcb *pcb, mbuf_t *pkt, protocol_family_t family)
{
#pragma unused(pcb)
#pragma unused(pkt)
#pragma unused(family)
 return 0;
}
