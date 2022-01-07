
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ip6_hdr {int ip6_nxt; } ;
struct ip6_frag {int ip6f_offlg; int ip6f_nxt; } ;
struct ip6_ext {int ip6e_nxt; int ip6e_len; } ;
typedef int ip6e ;
typedef int ip6 ;
typedef int fh ;
typedef int caddr_t ;


 int IP6F_OFF_MASK ;
 int M_PKTHDR ;
 int VERIFY (int ) ;
 int m_copydata (struct mbuf*,int,int,int ) ;

int
ip6_nexthdr(struct mbuf *m, int off, int proto, int *nxtp)
{
 struct ip6_hdr ip6;
 struct ip6_ext ip6e;
 struct ip6_frag fh;


 VERIFY(m != ((void*)0));
 if ((m->m_flags & M_PKTHDR) == 0 || m->m_pkthdr.len < off)
  return (-1);

 switch (proto) {
 case 130:
  if (m->m_pkthdr.len < off + sizeof (ip6))
   return (-1);
  m_copydata(m, off, sizeof (ip6), (caddr_t)&ip6);
  if (nxtp)
   *nxtp = ip6.ip6_nxt;
  off += sizeof (ip6);
  return (off);

 case 133:




  if (m->m_pkthdr.len < off + sizeof (fh))
   return (-1);
  m_copydata(m, off, sizeof (fh), (caddr_t)&fh);

  if (fh.ip6f_offlg & IP6F_OFF_MASK)
   return (-1);
  if (nxtp)
   *nxtp = fh.ip6f_nxt;
  off += sizeof (struct ip6_frag);
  return (off);

 case 136:
  if (m->m_pkthdr.len < off + sizeof (ip6e))
   return (-1);
  m_copydata(m, off, sizeof (ip6e), (caddr_t)&ip6e);
  if (nxtp)
   *nxtp = ip6e.ip6e_nxt;
  off += (ip6e.ip6e_len + 2) << 2;
  return (off);

 case 132:
 case 128:
 case 135:
  if (m->m_pkthdr.len < off + sizeof (ip6e))
   return (-1);
  m_copydata(m, off, sizeof (ip6e), (caddr_t)&ip6e);
  if (nxtp)
   *nxtp = ip6e.ip6e_nxt;
  off += (ip6e.ip6e_len + 1) << 3;
  return (off);

 case 129:
 case 134:
 case 131:

  return (-1);

 default:
  return (-1);
 }
}
