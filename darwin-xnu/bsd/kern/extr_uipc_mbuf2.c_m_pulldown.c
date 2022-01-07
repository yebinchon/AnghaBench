
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int m_len; int m_flags; int m_data; struct mbuf* m_next; int m_type; } ;
struct TYPE_2__ {int ip6s_pulldown_alloc; int ip6s_pulldown_copy; int ip6s_pullup2_copy; int ip6s_pullup2_alloc; int ip6s_pullup2; int ip6s_pullup2_fail; int ip6s_pullup_copy; int ip6s_pullup_alloc; int ip6s_pullup; int ip6s_pullup_fail; int ip6s_pulldown; } ;


 int MCLBYTES ;
 int MCLGET (struct mbuf*,int ) ;
 int MGET (struct mbuf*,int ,int ) ;
 int MHLEN ;
 int M_DONTWAIT ;
 int M_EXT ;
 int M_LEADINGSPACE (struct mbuf*) ;
 int M_TRAILINGSPACE (struct mbuf*) ;
 int bcopy (scalar_t__,scalar_t__,int) ;
 int caddr_t ;
 TYPE_1__ ip6stat ;
 int m_adj (struct mbuf*,int) ;
 int m_copydata (struct mbuf*,int ,int,scalar_t__) ;
 struct mbuf* m_copym (struct mbuf*,int,int,int ) ;
 int m_free (struct mbuf*) ;
 int m_freem (struct mbuf*) ;
 int * m_get_ext_free (struct mbuf*) ;
 scalar_t__ m_mclhasreference (struct mbuf*) ;
 scalar_t__ mtod (struct mbuf*,int ) ;
 int panic (char*) ;
 int printf (char*,...) ;

struct mbuf *
m_pulldown(struct mbuf *m, int off, int len, int *offp)
{
 struct mbuf *n = ((void*)0), *o = ((void*)0);
 int hlen = 0, tlen = 0, olen = 0;
 int sharedcluster = 0;






 if (m == ((void*)0))
  panic("m == NULL in m_pulldown()");
 if (len > MCLBYTES) {
  m_freem(m);
  return ((void*)0);
 }
 n = m;







 while (n != ((void*)0) && off > 0) {
  if (n->m_len > off)
   break;
  off -= n->m_len;
  n = n->m_next;
 }


 while (n != ((void*)0) && n->m_len == 0)
  n = n->m_next;

 if (!n) {
  m_freem(m);
  return ((void*)0);
 }
 if ((off == 0 || offp) && len <= n->m_len - off)
  goto ok;
 if (len <= n->m_len - off) {
  o = m_copym(n, off, n->m_len - off, M_DONTWAIT);
  if (o == ((void*)0)) {
   m_freem(m);
   return ((void*)0);
  }
  n->m_len = off;
  o->m_next = n->m_next;
  n->m_next = o;
  n = n->m_next;
  off = 0;
  goto ok;
 }
 hlen = n->m_len - off;
 tlen = len - hlen;





 olen = 0;
 for (o = n->m_next; o != ((void*)0); o = o->m_next)
  olen += o->m_len;
 if (hlen + olen < len) {
  m_freem(m);
  return ((void*)0);
 }





 if ((n->m_flags & M_EXT) == 0)
  sharedcluster = 0;
 else {
  if (m_get_ext_free(n) != ((void*)0))
   sharedcluster = 1;
  else if (m_mclhasreference(n))
   sharedcluster = 1;
  else
   sharedcluster = 0;
 }






 if ((off == 0 || offp) && M_TRAILINGSPACE(n) >= tlen
  && !sharedcluster) {
  m_copydata(n->m_next, 0, tlen, mtod(n, caddr_t) + n->m_len);
  n->m_len += tlen;
  m_adj(n->m_next, tlen);
  goto ok;
 }







 if ((off == 0 || offp) && M_LEADINGSPACE(n->m_next) >= hlen &&
     (n->m_next->m_len + hlen) >= len && !sharedcluster) {
  n->m_next->m_data -= hlen;
  n->m_next->m_len += hlen;
  bcopy(mtod(n, caddr_t) + off, mtod(n->m_next, caddr_t), hlen);
  n->m_len -= hlen;
  n = n->m_next;
  off = 0;
  goto ok;
 }
 MGET(o, M_DONTWAIT, m->m_type);
 if (o == ((void*)0)) {
  m_freem(m);
  return ((void*)0);
 }
 if (len > MHLEN) {
  MCLGET(o, M_DONTWAIT);
  if ((o->m_flags & M_EXT) == 0) {
   m_freem(m);
   m_free(o);
   return ((void*)0);
  }
 }

 o->m_len = hlen;
 bcopy(mtod(n, caddr_t) + off, mtod(o, caddr_t), hlen);
 n->m_len -= hlen;

 m_copydata(n->m_next, 0, tlen, mtod(o, caddr_t) + o->m_len);
 o->m_len += tlen;
 m_adj(n->m_next, tlen);
 o->m_next = n->m_next;
 n->m_next = o;
 n = o;
 off = 0;

ok:
 if (offp)
  *offp = off;
 return n;
}
