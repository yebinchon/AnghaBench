
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct TYPE_2__ {int tags; } ;
struct mbuf {int m_flags; int m_len; scalar_t__ m_data; TYPE_1__ m_pkthdr; } ;
struct m_taghdr {int m_tag_len; scalar_t__ m_tag_cookie; int m_tag_id; int m_tag_type; int refcnt; } ;
struct m_tag {int m_tag_len; scalar_t__ m_tag_cookie; int m_tag_id; int m_tag_type; int refcnt; } ;


 int IS_P2ALIGNED (struct m_taghdr*,int) ;
 int MLEN ;
 int M_EXT ;
 int M_TAGHDR ;
 int M_TAG_ALIGN (int) ;
 scalar_t__ M_TAG_VALID_PATTERN ;
 struct m_taghdr* SLIST_FIRST (int *) ;
 struct m_taghdr* SLIST_NEXT (struct m_taghdr*,int ) ;
 int VERIFY (int) ;
 int bzero (struct m_taghdr*,int) ;
 struct mbuf* m_dtom (struct m_taghdr*) ;
 struct m_taghdr* m_tag_alloc (int ,int ,int,int) ;
 int m_tag_link ;

struct m_tag *
m_tag_create(u_int32_t id, u_int16_t type, int len, int wait, struct mbuf *buf)
{
 struct m_tag *t = ((void*)0);
 struct m_tag *p;

 if (len < 0)
  return (((void*)0));

 if (len + sizeof (struct m_tag) + sizeof (struct m_taghdr) > MLEN)
  return (m_tag_alloc(id, type, len, wait));






 p = SLIST_FIRST(&buf->m_pkthdr.tags);
 while(p != ((void*)0)) {

  if (M_TAG_ALIGN(p->m_tag_len) +
      sizeof (struct m_taghdr) > MLEN) {
   p = SLIST_NEXT(p, m_tag_link);
   continue;
  }

  VERIFY(p->m_tag_cookie == M_TAG_VALID_PATTERN);

  struct mbuf *m = m_dtom(p);
  struct m_taghdr *hdr = (struct m_taghdr *)(void *)m->m_data;

  VERIFY(IS_P2ALIGNED(hdr + 1, sizeof (u_int64_t)));
  VERIFY(m->m_flags & M_TAGHDR && !(m->m_flags & M_EXT));


  if (M_TAG_ALIGN(len) <= MLEN - m->m_len) {
   t = (struct m_tag *)(void *)(m->m_data + m->m_len);
   VERIFY(IS_P2ALIGNED(t, sizeof (u_int64_t)));
   hdr->refcnt++;
   m->m_len += M_TAG_ALIGN(len);
   VERIFY(m->m_len <= MLEN);
   break;
  }

  p = SLIST_NEXT(p, m_tag_link);
 }

 if (t == ((void*)0))
  return (m_tag_alloc(id, type, len, wait));

 t->m_tag_cookie = M_TAG_VALID_PATTERN;
 t->m_tag_type = type;
 t->m_tag_len = len;
 t->m_tag_id = id;
 if (len > 0)
  bzero(t + 1, len);
 return (t);
}
