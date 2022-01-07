
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int _MCHECK (struct mbuf*) ;

void
m_mcheck(struct mbuf *m)
{
 _MCHECK(m);
}
