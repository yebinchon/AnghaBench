
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _net_mtag; } ;
struct TYPE_4__ {TYPE_1__ builtin_mtag; int tags; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;


 int M_PKTHDR ;
 int SLIST_INIT (int *) ;
 int VERIFY (int) ;
 int bzero (int *,int) ;

void
m_tag_init(struct mbuf *m, int all)
{
 VERIFY(m->m_flags & M_PKTHDR);

 SLIST_INIT(&m->m_pkthdr.tags);




 if (all) {
  bzero(&m->m_pkthdr.builtin_mtag._net_mtag,
      sizeof (m->m_pkthdr.builtin_mtag._net_mtag));
 }
}
