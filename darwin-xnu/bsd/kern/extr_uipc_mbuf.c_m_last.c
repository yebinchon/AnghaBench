
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;



struct mbuf *
m_last(struct mbuf *m)
{
 while (m->m_next != ((void*)0))
  m = m->m_next;
 return (m);
}
