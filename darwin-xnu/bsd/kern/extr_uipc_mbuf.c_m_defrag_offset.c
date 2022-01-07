
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int len; int * pkt_hdr; } ;
struct mbuf {int m_flags; int m_data; int m_len; TYPE_1__ m_pkthdr; } ;


 int MCLBYTES ;
 int MHLEN ;
 int MLEN ;
 int MT_DATA ;
 int M_PKTHDR ;
 int VERIFY (int) ;
 int caddr_t ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_copydata (struct mbuf*,int,int,int ) ;
 scalar_t__ m_dup_pkthdr (struct mbuf*,struct mbuf*,int) ;
 int m_fixhdr (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 struct mbuf* m_get (int,int ) ;
 struct mbuf* m_getcl (int,int ,int) ;
 struct mbuf* m_gethdr (int,int ) ;
 int mtod (struct mbuf*,int ) ;

struct mbuf *
m_defrag_offset(struct mbuf *m0, u_int32_t off, int how)
{
 struct mbuf *m_new = ((void*)0), *m_final = ((void*)0);
 int progress = 0, length, pktlen;

 if (!(m0->m_flags & M_PKTHDR))
  return (m0);

 VERIFY(off < MHLEN);
 m_fixhdr(m0);

 pktlen = m0->m_pkthdr.len + off;
 if (pktlen > MHLEN)
  m_final = m_getcl(how, MT_DATA, M_PKTHDR);
 else
  m_final = m_gethdr(how, MT_DATA);

 if (m_final == ((void*)0))
  goto nospace;

 if (off > 0) {
  pktlen -= off;
  m_final->m_data += off;
 }






 VERIFY(m0->m_pkthdr.pkt_hdr == ((void*)0));

 if (m_dup_pkthdr(m_final, m0, how) == 0)
  goto nospace;

 m_new = m_final;

 while (progress < pktlen) {
  length = pktlen - progress;
  if (length > MCLBYTES)
   length = MCLBYTES;
  length -= ((m_new == m_final) ? off : 0);
  if (length < 0)
   goto nospace;

  if (m_new == ((void*)0)) {
   if (length > MLEN)
    m_new = m_getcl(how, MT_DATA, 0);
   else
    m_new = m_get(how, MT_DATA);
   if (m_new == ((void*)0))
    goto nospace;
  }

  m_copydata(m0, progress, length, mtod(m_new, caddr_t));
  progress += length;
  m_new->m_len = length;
  if (m_new != m_final)
   m_cat(m_final, m_new);
  m_new = ((void*)0);
 }
 m_freem(m0);
 m0 = m_final;
 return (m0);
nospace:
 if (m_final)
  m_freem(m_final);
 return (((void*)0));
}
