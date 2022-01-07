
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_data; } ;


 int M_SIZE (struct mbuf*) ;
 scalar_t__ M_START (struct mbuf*) ;
 int VERIFY (int) ;

void
m_align(struct mbuf *m, int len)
{
 int adjust = 0;


 VERIFY(m->m_data == M_START(m));
 VERIFY(len >= 0);
 VERIFY(len <= M_SIZE(m));
 adjust = M_SIZE(m) - len;
 m->m_data += adjust &~ (sizeof(long) - 1);
}
