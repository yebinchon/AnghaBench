
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_next; } ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 scalar_t__ MBUF_MULTIPAGES (struct mbuf*) ;
 scalar_t__ TRUE ;
 int atomic_add_32 (int *,int) ;
 struct mbuf* m_expand (struct mbuf*,struct mbuf**) ;
 int m_freem (struct mbuf*) ;
 int mb_normalized ;

struct mbuf *
m_normalize(struct mbuf *m)
{
 struct mbuf *top = ((void*)0);
 struct mbuf **nm = &top;
 boolean_t expanded = FALSE;

 while (m != ((void*)0)) {
  struct mbuf *n;

  n = m->m_next;
  m->m_next = ((void*)0);


  if (MBUF_MULTIPAGES(m)) {
   struct mbuf *last;
   if ((m = m_expand(m, &last)) == ((void*)0)) {
    m_freem(n);
    m_freem(top);
    top = ((void*)0);
    break;
   }
   *nm = m;
   nm = &last->m_next;
   expanded = TRUE;
  } else {
   *nm = m;
   nm = &m->m_next;
  }
  m = n;
 }
 if (expanded)
  atomic_add_32(&mb_normalized, 1);
 return (top);
}
