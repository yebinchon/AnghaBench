
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; } ;


 int M_PKTHDR ;
 int SO_VALID_TC (int) ;
 int VERIFY (int ) ;
 int m_set_service_class (struct mbuf*,int ) ;
 int so_tc2msc (int) ;

__attribute__((used)) static void
bpf_set_packet_service_class(struct mbuf *m, int tc)
{
 if (!(m->m_flags & M_PKTHDR))
  return;

 VERIFY(SO_VALID_TC(tc));
 (void) m_set_service_class(m, so_tc2msc(tc));
}
