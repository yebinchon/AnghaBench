
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_2__* mbuf_t ;
typedef int mbuf_how_t ;
typedef int errno_t ;
struct TYPE_10__ {int len; } ;
struct TYPE_11__ {size_t m_len; int m_flags; TYPE_1__ m_pkthdr; struct TYPE_11__* m_next; int m_type; } ;


 int EINVAL ;
 int ENOBUFS ;
 void* MIN (scalar_t__,size_t) ;
 size_t MINCLSIZE ;
 scalar_t__ MLEN ;
 int M_PKTHDR ;
 int bcopy (char const*,char*,unsigned int) ;
 TYPE_2__* m_get (int ,int ) ;
 TYPE_2__* m_getclr (int ,int ) ;
 scalar_t__ mbuf_data (TYPE_2__*) ;
 scalar_t__ mbuf_maxlen (TYPE_2__*) ;
 int mbuf_mclget (int ,int ,TYPE_2__**) ;
 scalar_t__ mbuf_trailingspace (TYPE_2__*) ;

errno_t
mbuf_copyback(
 mbuf_t m,
 size_t off,
 size_t len,
 const void *data,
 mbuf_how_t how)
{
 size_t mlen;
 mbuf_t m_start = m;
 mbuf_t n;
 int totlen = 0;
 errno_t result = 0;
 const char *cp = data;

 if (m == ((void*)0) || len == 0 || data == ((void*)0))
  return (EINVAL);

 while (off > (mlen = m->m_len)) {
  off -= mlen;
  totlen += mlen;
  if (m->m_next == 0) {
   n = m_getclr(how, m->m_type);
   if (n == 0) {
    result = ENOBUFS;
    goto out;
   }
   n->m_len = MIN(MLEN, len + off);
   m->m_next = n;
  }
  m = m->m_next;
 }

 while (len > 0) {
  mlen = MIN(m->m_len - off, len);
  if (mlen < len && m->m_next == ((void*)0) &&
      mbuf_trailingspace(m) > 0) {
   size_t grow = MIN(mbuf_trailingspace(m), len - mlen);
   mlen += grow;
   m->m_len += grow;
  }
  bcopy(cp, off + (char *)mbuf_data(m), (unsigned)mlen);
  cp += mlen;
  len -= mlen;
  mlen += off;
  off = 0;
  totlen += mlen;
  if (len == 0)
   break;
  if (m->m_next == 0) {
   n = m_get(how, m->m_type);
   if (n == ((void*)0)) {
    result = ENOBUFS;
    goto out;
   }
   if (len > MINCLSIZE) {




    mbuf_mclget(how, m->m_type, &n);
   }
   n->m_len = MIN(mbuf_maxlen(n), len);
   m->m_next = n;
  }
  m = m->m_next;
 }

out:
 if ((m_start->m_flags & M_PKTHDR) && (m_start->m_pkthdr.len < totlen))
  m_start->m_pkthdr.len = totlen;

 return (result);
}
