
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {scalar_t__ m_tag_cookie; } ;


 int M_PKTHDR ;
 scalar_t__ M_TAG_VALID_PATTERN ;
 int SLIST_REMOVE (int *,struct m_tag*,int ,int ) ;
 int VERIFY (int) ;
 int m_tag ;
 int m_tag_link ;

void
m_tag_unlink(struct mbuf *m, struct m_tag *t)
{
 VERIFY(m->m_flags & M_PKTHDR);
 VERIFY(t != ((void*)0) && t->m_tag_cookie == M_TAG_VALID_PATTERN);

 SLIST_REMOVE(&m->m_pkthdr.tags, t, m_tag, m_tag_link);
}
