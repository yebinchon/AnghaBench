
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {scalar_t__ m_tag_cookie; } ;


 scalar_t__ M_TAG_VALID_PATTERN ;
 struct m_tag* SLIST_NEXT (struct m_tag*,int ) ;
 int VERIFY (int) ;
 int m_tag_link ;

struct m_tag *
m_tag_next(struct mbuf *m, struct m_tag *t)
{
#pragma unused(m)
 VERIFY(t != ((void*)0));
 VERIFY(t->m_tag_cookie == M_TAG_VALID_PATTERN);

 return (SLIST_NEXT(t, m_tag_link));
}
