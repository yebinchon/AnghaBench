
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct pkthdr {int tx_start_seq; int pkt_proto; int pkt_flowsrc; int pkt_flowid; int pkt_timestamp; int pkt_flags; } ;
struct mbuf {struct pkthdr m_pkthdr; } ;
struct TYPE_3__ {int pktsched_ptype; scalar_t__ pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;



 int VERIFY (int ) ;

void
pktsched_get_pkt_vars(pktsched_pkt_t *pkt, uint32_t **flags,
    uint64_t **timestamp, uint32_t *flowid, uint8_t *flowsrc, uint8_t *proto,
    uint32_t *tcp_start_seq)
{
 switch (pkt->pktsched_ptype) {
 case 128: {
  struct mbuf *m = (struct mbuf *)pkt->pktsched_pkt;
  struct pkthdr *pkth = &m->m_pkthdr;

  if (flags != ((void*)0))
   *flags = &pkth->pkt_flags;
  if (timestamp != ((void*)0))
   *timestamp = &pkth->pkt_timestamp;
  if (flowid != ((void*)0))
   *flowid = pkth->pkt_flowid;
  if (flowsrc != ((void*)0))
   *flowsrc = pkth->pkt_flowsrc;
  if (proto != ((void*)0))
   *proto = pkth->pkt_proto;




  if (tcp_start_seq != ((void*)0))
   *tcp_start_seq = pkth->tx_start_seq;

  break;
 }


 default:
  VERIFY(0);

 }
}
