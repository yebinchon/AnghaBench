
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mbuf {int m_flags; } ;


 int ASSERT (int) ;
 int MEXT_PRIV (struct mbuf*) ;
 int M_EXT ;

uint32_t
m_ext_get_prop(struct mbuf *m)
{
 ASSERT(m->m_flags & M_EXT);
 return (MEXT_PRIV(m));
}
