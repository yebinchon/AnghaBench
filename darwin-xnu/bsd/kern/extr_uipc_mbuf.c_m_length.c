
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; } ;
struct mbuf {int m_flags; scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;

unsigned int
m_length(struct mbuf *m)
{
 struct mbuf *m0;
 unsigned int pktlen;

 if (m->m_flags & M_PKTHDR)
  return (m->m_pkthdr.len);

 pktlen = 0;
 for (m0 = m; m0 != ((void*)0); m0 = m0->m_next)
  pktlen += m0->m_len;
 return (pktlen);
}
