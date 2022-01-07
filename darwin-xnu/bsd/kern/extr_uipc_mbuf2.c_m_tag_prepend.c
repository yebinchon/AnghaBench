
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;


 int SLIST_INSERT_HEAD (int *,struct m_tag*,int ) ;
 int VERIFY (int) ;
 int m_tag_link ;

void
m_tag_prepend(struct mbuf *m, struct m_tag *t)
{
 VERIFY(m != ((void*)0) && t != ((void*)0));

 SLIST_INSERT_HEAD(&m->m_pkthdr.tags, t, m_tag_link);
}
