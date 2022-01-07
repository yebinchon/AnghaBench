
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct mbuf {int m_flags; scalar_t__ m_data; } ;
struct m_taghdr {scalar_t__ refcnt; } ;
struct m_tag {scalar_t__ m_tag_id; scalar_t__ m_tag_type; scalar_t__ m_tag_cookie; int m_tag_len; } ;
typedef int caddr_t ;


 int IS_P2ALIGNED (struct m_taghdr*,int) ;
 scalar_t__ KERNEL_MODULE_TAG_ID ;
 scalar_t__ KERNEL_TAG_TYPE_MACLABEL ;
 scalar_t__ MLEN ;
 int M_TAGHDR ;
 scalar_t__ M_TAG_ALIGN (int ) ;
 int M_TAG_FREE_PATTERN ;
 scalar_t__ M_TAG_VALID_PATTERN ;
 int VERIFY (int) ;
 struct mbuf* m_dtom (struct m_tag*) ;
 int m_free (struct mbuf*) ;
 int m_mclfree (int ) ;
 int mac_mbuf_tag_destroy (struct m_tag*) ;

void
m_tag_free(struct m_tag *t)
{






 if (t == ((void*)0))
  return;

 VERIFY(t->m_tag_cookie == M_TAG_VALID_PATTERN);

 if (M_TAG_ALIGN(t->m_tag_len) + sizeof (struct m_taghdr) <= MLEN) {
  struct mbuf * m = m_dtom(t);
  VERIFY(m->m_flags & M_TAGHDR);
  struct m_taghdr *hdr = (struct m_taghdr *)(void *)m->m_data;

  VERIFY(IS_P2ALIGNED(hdr + 1, sizeof (u_int64_t)));


  if(--hdr->refcnt == 0) {
   m_free(m);
   return;
  }


  u_int64_t *fill_ptr = (u_int64_t *)t;
  u_int64_t *end_ptr = (u_int64_t *)(t + 1);
  while (fill_ptr < end_ptr) {
   *fill_ptr = M_TAG_FREE_PATTERN;
   fill_ptr++;
  }
 } else {
  m_mclfree((caddr_t)t);
 }
}
