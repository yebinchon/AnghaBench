
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int pkt_flags; scalar_t__ pkt_timestamp; scalar_t__ pkt_ifainfo; scalar_t__ pkt_flowid; scalar_t__ pkt_flowsrc; scalar_t__ pkt_proto; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int MBUF_SC_BE ;
 int M_PKTHDR ;
 int PKTF_IFAINFO ;
 int PKTF_LOOP ;
 int PKTF_TS_VALID ;
 int VERIFY (int) ;
 int m_set_service_class (struct mbuf*,int ) ;

void
m_classifier_init(struct mbuf *m, uint32_t pktf_mask)
{
 VERIFY(m->m_flags & M_PKTHDR);

 m->m_pkthdr.pkt_proto = 0;
 m->m_pkthdr.pkt_flowsrc = 0;
 m->m_pkthdr.pkt_flowid = 0;
 m->m_pkthdr.pkt_flags &= pktf_mask;

 if (!(m->m_pkthdr.pkt_flags & PKTF_LOOP))
  (void) m_set_service_class(m, MBUF_SC_BE);
 if (!(m->m_pkthdr.pkt_flags & PKTF_IFAINFO))
  m->m_pkthdr.pkt_ifainfo = 0;



 if (!(m->m_pkthdr.pkt_flags & PKTF_TS_VALID))
  m->m_pkthdr.pkt_timestamp = 0;
}
