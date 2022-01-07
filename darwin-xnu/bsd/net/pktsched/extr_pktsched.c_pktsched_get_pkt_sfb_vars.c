
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pkthdr {int pkt_mpriv_hash; int pkt_mpriv_flags; } ;
struct mbuf {struct pkthdr m_pkthdr; } ;
struct TYPE_3__ {int pktsched_ptype; scalar_t__ pktsched_pkt; } ;
typedef TYPE_1__ pktsched_pkt_t ;



 int VERIFY (int ) ;
 int _CASSERT (int) ;

uint32_t *
pktsched_get_pkt_sfb_vars(pktsched_pkt_t *pkt, uint32_t **sfb_flags)
{
 uint32_t *hashp = ((void*)0);

 switch (pkt->pktsched_ptype) {
 case 128: {
  struct mbuf *m = (struct mbuf *)pkt->pktsched_pkt;
  struct pkthdr *pkth = &m->m_pkthdr;

  _CASSERT(sizeof (pkth->pkt_mpriv_hash) == sizeof (uint32_t));
  _CASSERT(sizeof (pkth->pkt_mpriv_flags) == sizeof (uint32_t));

  *sfb_flags = &pkth->pkt_mpriv_flags;
  hashp = &pkth->pkt_mpriv_hash;
  break;
 }


 default:
  VERIFY(0);

 }

 return (hashp);
}
