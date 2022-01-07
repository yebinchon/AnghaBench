
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sadb_msghdr {int* extlen; int * extoff; int ** ext; int * msg; } ;
struct sadb_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;


 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 int PFKEY_ALIGN8 (int) ;
 int SADB_EXT_MAX ;
 int SADB_EXT_RESERVED ;
 int caddr_t ;
 struct mbuf* key_alloc_mbuf (int) ;
 int m_cat (struct mbuf*,struct mbuf*) ;
 int m_copydata (struct mbuf*,int ,int,int ) ;
 struct mbuf* m_copym (struct mbuf*,int ,int,int ) ;
 int m_freem (struct mbuf*) ;
 int mtod (struct mbuf*,int ) ;
 int panic (char*) ;

__attribute__((used)) static struct mbuf *
key_gather_mbuf(struct mbuf *m, const struct sadb_msghdr *mhp,
    int ndeep, int nitem, int *items)
{
 int idx;
 int i;
 struct mbuf *result = ((void*)0), *n;
 int len;

 if (m == ((void*)0) || mhp == ((void*)0))
  panic("null pointer passed to key_gather");

 for (i = 0; i < nitem; i++) {
  idx = items[i];
  if (idx < 0 || idx > SADB_EXT_MAX)
   goto fail;

  if (idx == SADB_EXT_RESERVED && mhp->msg == ((void*)0))
   continue;
  if (idx != SADB_EXT_RESERVED &&
      (mhp->ext[idx] == ((void*)0) || mhp->extlen[idx] == 0))
   continue;

  if (idx == SADB_EXT_RESERVED) {
   len = PFKEY_ALIGN8(sizeof(struct sadb_msg));
   MGETHDR(n, M_WAITOK, MT_DATA);
   if (!n)
    goto fail;
   n->m_len = len;
   n->m_next = ((void*)0);
   m_copydata(m, 0, sizeof(struct sadb_msg),
        mtod(n, caddr_t));
  } else if (i < ndeep) {
   len = mhp->extlen[idx];
   n = key_alloc_mbuf(len);
   if (!n || n->m_next) {
    if (n)
     m_freem(n);
    goto fail;
   }
   m_copydata(m, mhp->extoff[idx], mhp->extlen[idx],
        mtod(n, caddr_t));
  } else {
   n = m_copym(m, mhp->extoff[idx], mhp->extlen[idx],
      M_WAITOK);
  }
  if (n == ((void*)0))
   goto fail;

  if (result)
   m_cat(result, n);
  else
   result = n;
 }

 if ((result->m_flags & M_PKTHDR) != 0) {
  result->m_pkthdr.len = 0;
  for (n = result; n; n = n->m_next)
   result->m_pkthdr.len += n->m_len;
 }

 return result;

fail:
 m_freem(result);
 return ((void*)0);
}
