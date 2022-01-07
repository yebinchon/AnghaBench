
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; int m_data; int * m_next; } ;


 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MLEN ;
 int MT_DATA ;
 int M_DONTWAIT ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_freem (struct mbuf*) ;

__attribute__((used)) static struct mbuf *
key_alloc_mbuf(
      int l)
{
 struct mbuf *m = ((void*)0), *n;
 int len, t;

 len = l;
 while (len > 0) {
  MGET(n, M_DONTWAIT, MT_DATA);
  if (n && len > MLEN)
   MCLGET(n, M_DONTWAIT);
  if (!n) {
   m_freem(m);
   return ((void*)0);
  }

  n->m_next = ((void*)0);
  n->m_len = 0;
  n->m_len = M_TRAILINGSPACE(n);

  if (n->m_len > len) {
   t = (n->m_len - len) & ~(sizeof(long) - 1);
   n->m_data += t;
   n->m_len = len;
  }

  len -= n->m_len;

  if (m)
   m_cat(m, n);
  else
   m = n;
 }

 return m;
}
