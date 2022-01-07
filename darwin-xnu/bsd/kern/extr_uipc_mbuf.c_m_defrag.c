
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 struct mbuf* m_defrag_offset (struct mbuf*,int ,int) ;

struct mbuf *
m_defrag(struct mbuf *m0, int how)
{
 return (m_defrag_offset(m0, 0, how));
}
