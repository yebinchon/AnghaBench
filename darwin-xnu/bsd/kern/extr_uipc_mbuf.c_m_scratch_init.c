
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkthdr {int pkt_flags; int pkt_mpriv; } ;
struct mbuf {int m_flags; struct pkthdr m_pkthdr; } ;


 int M_PKTHDR ;
 int PKTF_PRIV_GUARDED ;
 int VERIFY (int) ;
 int bzero (int *,int) ;
 int panic_plain (char*,struct mbuf*,int) ;

void
m_scratch_init(struct mbuf *m)
{
 struct pkthdr *pkt = &m->m_pkthdr;

 VERIFY(m->m_flags & M_PKTHDR);


 if (pkt->pkt_flags & PKTF_PRIV_GUARDED) {
  panic_plain("Invalid attempt to modify guarded module-private "
      "area: mbuf %p, pkt_flags 0x%x\n", m, pkt->pkt_flags);

 }

 bzero(&pkt->pkt_mpriv, sizeof (pkt->pkt_mpriv));
}
