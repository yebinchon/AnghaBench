
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_len; int m_data; int m_flags; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;


 int M_PKTHDR ;

void
m_adj(struct mbuf *mp, int req_len)
{
 int len = req_len;
 struct mbuf *m;
 int count;

 if ((m = mp) == ((void*)0))
  return;
 if (len >= 0) {



  while (m != ((void*)0) && len > 0) {
   if (m->m_len <= len) {
    len -= m->m_len;
    m->m_len = 0;
    m = m->m_next;
   } else {
    m->m_len -= len;
    m->m_data += len;
    len = 0;
   }
  }
  m = mp;
  if (m->m_flags & M_PKTHDR)
   m->m_pkthdr.len -= (req_len - len);
 } else {







  len = -len;
  count = 0;
  for (;;) {
   count += m->m_len;
   if (m->m_next == (struct mbuf *)0)
    break;
   m = m->m_next;
  }
  if (m->m_len >= len) {
   m->m_len -= len;
   m = mp;
   if (m->m_flags & M_PKTHDR)
    m->m_pkthdr.len -= len;
   return;
  }
  count -= len;
  if (count < 0)
   count = 0;





  m = mp;
  if (m->m_flags & M_PKTHDR)
   m->m_pkthdr.len = count;
  for (; m; m = m->m_next) {
   if (m->m_len >= count) {
    m->m_len = count;
    break;
   }
   count -= m->m_len;
  }
  while ((m = m->m_next))
   m->m_len = 0;
 }
}
