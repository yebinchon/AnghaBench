
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_ifainfo; int pkt_svc; int pkt_flags; int pkt_flowid; int pkt_flowsrc; int pkt_proto; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;
 int VERIFY (int) ;
 int m_set_service_class (struct mbuf*,int ) ;

void
m_copy_classifier(struct mbuf *to, struct mbuf *from)
{
 VERIFY(to->m_flags & M_PKTHDR);
 VERIFY(from->m_flags & M_PKTHDR);

 to->m_pkthdr.pkt_proto = from->m_pkthdr.pkt_proto;
 to->m_pkthdr.pkt_flowsrc = from->m_pkthdr.pkt_flowsrc;
 to->m_pkthdr.pkt_flowid = from->m_pkthdr.pkt_flowid;
 to->m_pkthdr.pkt_flags = from->m_pkthdr.pkt_flags;
 (void) m_set_service_class(to, from->m_pkthdr.pkt_svc);
 to->m_pkthdr.pkt_ifainfo = from->m_pkthdr.pkt_ifainfo;
}
