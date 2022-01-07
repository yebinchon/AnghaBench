
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int m_type; } ;


 int MHLEN ;
 int MH_ALIGN (struct mbuf*,int) ;
 int MLEN ;
 int M_ALIGN (struct mbuf*,int) ;
 int M_COPY_PKTHDR (struct mbuf*,struct mbuf*) ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int _MGET (struct mbuf*,int,int ) ;
 int m_freem (struct mbuf*) ;

struct mbuf *
m_prepend(struct mbuf *m, int len, int how)
{
 struct mbuf *mn;

 _MGET(mn, how, m->m_type);
 if (mn == ((void*)0)) {
  m_freem(m);
  return (((void*)0));
 }
 if (m->m_flags & M_PKTHDR) {
  M_COPY_PKTHDR(mn, m);
  m->m_flags &= ~M_PKTHDR;
 }
 mn->m_next = m;
 m = mn;
 if (m->m_flags & M_PKTHDR) {
  VERIFY(len <= MHLEN);
  MH_ALIGN(m, len);
 } else {
  VERIFY(len <= MLEN);
  M_ALIGN(m, len);
 }
 m->m_len = len;
 return (m);
}
