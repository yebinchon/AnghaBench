
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tags; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_tag {int dummy; } ;


 int M_PKTHDR ;
 struct m_tag* SLIST_FIRST (int *) ;
 int VERIFY (int) ;

struct m_tag *
m_tag_first(struct mbuf *m)
{
 VERIFY(m->m_flags & M_PKTHDR);

 return (SLIST_FIRST(&m->m_pkthdr.tags));
}
