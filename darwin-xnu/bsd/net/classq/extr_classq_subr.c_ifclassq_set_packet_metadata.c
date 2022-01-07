
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bufstatus_sndbuf; int bufstatus_if; int pkt_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_sndbyte_unsent; } ;
struct ifclassq {int dummy; } ;
typedef int classq_pkt_type_t ;


 int IFCQ_BYTES (struct ifclassq*) ;
 int IFNET_IS_CELLULAR (struct ifnet*) ;
 int PKTF_VALID_UNSENT_DATA ;

 int VERIFY (int ) ;

inline void
ifclassq_set_packet_metadata(struct ifclassq *ifq, struct ifnet *ifp,
    void *p, classq_pkt_type_t ptype)
{
 if (!IFNET_IS_CELLULAR(ifp))
  return;

 switch (ptype) {
 case 128: {
  struct mbuf *m = p;
  m->m_pkthdr.pkt_flags |= PKTF_VALID_UNSENT_DATA;
  m->m_pkthdr.bufstatus_if = IFCQ_BYTES(ifq);
  m->m_pkthdr.bufstatus_sndbuf = ifp->if_sndbyte_unsent;
  break;
 }


 default:
  VERIFY(0);

 }
}
