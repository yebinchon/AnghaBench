
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_2__ {int tags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {scalar_t__ m_tag_cookie; scalar_t__ m_tag_id; scalar_t__ m_tag_type; } ;


 int M_PKTHDR ;
 scalar_t__ M_TAG_VALID_PATTERN ;
 struct m_tag* SLIST_FIRST (int *) ;
 struct m_tag* SLIST_NEXT (struct m_tag*,int ) ;
 int VERIFY (int) ;
 int m_tag_link ;

struct m_tag *
m_tag_locate(struct mbuf *m, u_int32_t id, u_int16_t type, struct m_tag *t)
{
 struct m_tag *p;

 VERIFY(m->m_flags & M_PKTHDR);

 if (t == ((void*)0)) {
  p = SLIST_FIRST(&m->m_pkthdr.tags);
 } else {
  VERIFY(t->m_tag_cookie == M_TAG_VALID_PATTERN);
  p = SLIST_NEXT(t, m_tag_link);
 }
 while (p != ((void*)0)) {
  VERIFY(p->m_tag_cookie == M_TAG_VALID_PATTERN);
  if (p->m_tag_id == id && p->m_tag_type == type)
   return (p);
  p = SLIST_NEXT(p, m_tag_link);
 }
 return (((void*)0));
}
