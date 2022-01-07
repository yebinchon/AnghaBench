
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; struct mbuf* m_next; } ;


 int M_PKTHDR ;

__attribute__((used)) static struct mbuf *
cfil_data_start(struct mbuf *m)
{
 struct mbuf *m0;


 for (m0 = m; m0 != ((void*)0); m0 = m0->m_next) {
  if (m0->m_flags & M_PKTHDR)
   break;
 }
 return m0;
}
