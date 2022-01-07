
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; } ;


 int ASSERT (int ) ;
 int EXTF_READONLY ;
 int MEXT_FLAGS (struct mbuf*) ;
 int M_EXT ;
 int * m_get_rfa (struct mbuf*) ;

int
m_mclhasreference(struct mbuf *m)
{
 if (!(m->m_flags & M_EXT))
  return (0);

 ASSERT(m_get_rfa(m) != ((void*)0));

 return ((MEXT_FLAGS(m) & EXTF_READONLY) ? 1 : 0);
}
