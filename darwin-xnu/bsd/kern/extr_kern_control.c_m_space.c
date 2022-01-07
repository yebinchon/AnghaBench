
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {scalar_t__ m_len; struct mbuf* m_next; } ;



__attribute__((used)) static int
m_space(struct mbuf *m)
{
 int space = 0;
 struct mbuf *nxt;

 for (nxt = m; nxt != ((void*)0); nxt = nxt->m_next)
  space += nxt->m_len;

 return (space);
}
