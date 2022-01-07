
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int rcvif; } ;
struct mbuf {unsigned int m_len; int m_flags; struct mbuf* m_next; scalar_t__ m_data; int m_ext; int m_type; TYPE_1__ m_pkthdr; } ;


 unsigned int MHLEN ;
 int MH_ALIGN (struct mbuf*,unsigned int) ;
 unsigned int MLEN ;
 scalar_t__ MTOD (struct mbuf*,int ) ;
 int M_ALIGN (struct mbuf*,unsigned int) ;
 int M_EXT ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int _MGET (struct mbuf*,int,int ) ;
 int _MGETHDR (struct mbuf*,int,int ) ;
 int bcopy (scalar_t__,scalar_t__,unsigned int) ;
 int caddr_t ;
 int m_free (struct mbuf*) ;
 int m_incref (struct mbuf*) ;
 struct mbuf* m_split (struct mbuf*,unsigned int,int) ;

__attribute__((used)) static struct mbuf *
m_split0(struct mbuf *m0, int len0, int wait, int copyhdr)
{
 struct mbuf *m, *n;
 unsigned len = len0, remain;





 for (m = m0; m && len > m->m_len; m = m->m_next)
  len -= m->m_len;
 if (m == ((void*)0))
  return (((void*)0));







 remain = m->m_len - len;






 if (copyhdr && (m0->m_flags & M_PKTHDR) && remain == 0) {
  _MGETHDR(n, wait, m0->m_type);
  if (n == ((void*)0))
   return (((void*)0));
  n->m_next = m->m_next;
  m->m_next = ((void*)0);
  n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
  n->m_pkthdr.len = m0->m_pkthdr.len - len0;
  m0->m_pkthdr.len = len0;
  return (n);
 } if (copyhdr && (m0->m_flags & M_PKTHDR)) {
  _MGETHDR(n, wait, m0->m_type);
  if (n == ((void*)0))
   return (((void*)0));
  n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
  n->m_pkthdr.len = m0->m_pkthdr.len - len0;
  m0->m_pkthdr.len = len0;







  if (m->m_flags & M_EXT)
   goto extpacket;
  if (remain > MHLEN) {

   MH_ALIGN(n, 0);
   n->m_next = m_split(m, len, wait);
   if (n->m_next == ((void*)0)) {
    (void) m_free(n);
    return (((void*)0));
   } else
    return (n);
  } else
   MH_ALIGN(n, remain);
 } else if (remain == 0) {
  n = m->m_next;
  m->m_next = ((void*)0);
  return (n);
 } else {
  _MGET(n, wait, m->m_type);
  if (n == ((void*)0))
   return (((void*)0));

  if ((m->m_flags & M_EXT) == 0) {
   VERIFY(remain <= MLEN);
   M_ALIGN(n, remain);
  }
 }
extpacket:
 if (m->m_flags & M_EXT) {
  n->m_flags |= M_EXT;
  n->m_ext = m->m_ext;
  m_incref(m);
  n->m_data = m->m_data + len;
 } else {
  bcopy(MTOD(m, caddr_t) + len, MTOD(n, caddr_t), remain);
 }
 n->m_len = remain;
 m->m_len = len;
 n->m_next = m->m_next;
 m->m_next = ((void*)0);
 return (n);
}
