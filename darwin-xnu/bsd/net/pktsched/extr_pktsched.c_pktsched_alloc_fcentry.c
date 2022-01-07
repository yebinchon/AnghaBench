
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pkt_flowid; int pkt_flowsrc; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct flowadv_fcentry {int fce_flowid; int fce_flowsrc_type; } ;
struct TYPE_5__ {int pktsched_ptype; scalar_t__ pktsched_pkt; } ;
typedef TYPE_2__ pktsched_pkt_t ;



 int VERIFY (int ) ;
 int _CASSERT (int) ;
 struct flowadv_fcentry* flowadv_alloc_entry (int) ;

struct flowadv_fcentry *
pktsched_alloc_fcentry(pktsched_pkt_t *pkt, struct ifnet *ifp, int how)
{
#pragma unused(ifp)
 struct flowadv_fcentry *fce = ((void*)0);

 switch (pkt->pktsched_ptype) {
 case 128: {
  struct mbuf *m = (struct mbuf *)pkt->pktsched_pkt;

  fce = flowadv_alloc_entry(how);
  if (fce == ((void*)0))
   break;

  _CASSERT(sizeof (m->m_pkthdr.pkt_flowid) ==
      sizeof (fce->fce_flowid));

  fce->fce_flowsrc_type = m->m_pkthdr.pkt_flowsrc;
  fce->fce_flowid = m->m_pkthdr.pkt_flowid;
  break;
 }


 default:
  VERIFY(0);

 }

 return (fce);
}
