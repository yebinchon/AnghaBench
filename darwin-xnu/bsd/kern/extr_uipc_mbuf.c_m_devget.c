
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {int m_len; int m_flags; int m_data; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;
struct ifnet {int dummy; } ;


 int MCLGET (struct mbuf*,int ) ;
 int MC_CL ;
 int MHLEN ;
 int MIN (int,int) ;
 int MINCLSIZE ;
 int MLEN ;
 int MTOD (struct mbuf*,int ) ;
 int MT_DATA ;
 int M_DONTWAIT ;
 int M_EXT ;
 int _MGET (struct mbuf*,int ,int ) ;
 int _MGETHDR (struct mbuf*,int ,int ) ;
 int bcopy (char*,int ,unsigned int) ;
 int caddr_t ;
 int m_freem (struct mbuf*) ;
 int m_maxsize (int ) ;
 int max_linkhdr ;

struct mbuf *
m_devget(char *buf, int totlen, int off0, struct ifnet *ifp,
    void (*copy)(const void *, void *, size_t))
{
 struct mbuf *m;
 struct mbuf *top = ((void*)0), **mp = &top;
 int off = off0, len;
 char *cp;
 char *epkt;

 cp = buf;
 epkt = cp + totlen;
 if (off) {




  cp += off + 2 * sizeof (u_int16_t);
  totlen -= 2 * sizeof (u_int16_t);
 }
 _MGETHDR(m, M_DONTWAIT, MT_DATA);
 if (m == ((void*)0))
  return (((void*)0));
 m->m_pkthdr.rcvif = ifp;
 m->m_pkthdr.len = totlen;
 m->m_len = MHLEN;

 while (totlen > 0) {
  if (top != ((void*)0)) {
   _MGET(m, M_DONTWAIT, MT_DATA);
   if (m == ((void*)0)) {
    m_freem(top);
    return (((void*)0));
   }
   m->m_len = MLEN;
  }
  len = MIN(totlen, epkt - cp);
  if (len >= MINCLSIZE) {
   MCLGET(m, M_DONTWAIT);
   if (m->m_flags & M_EXT) {
    m->m_len = len = MIN(len, m_maxsize(MC_CL));
   } else {

    if (top != ((void*)0))
     m_freem(top);
    m_freem(m);
    return (((void*)0));
   }
  } else {



   if (len < m->m_len) {
    if (top == ((void*)0) &&
        len + max_linkhdr <= m->m_len)
     m->m_data += max_linkhdr;
    m->m_len = len;
   } else {
    len = m->m_len;
   }
  }
  if (copy)
   copy(cp, MTOD(m, caddr_t), (unsigned)len);
  else
   bcopy(cp, MTOD(m, caddr_t), (unsigned)len);
  cp += len;
  *mp = m;
  mp = &m->m_next;
  totlen -= len;
  if (cp == epkt)
   cp = buf;
 }
 return (top);
}
