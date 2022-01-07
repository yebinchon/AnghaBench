
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct ip6_msource {scalar_t__ im6s_stp; struct in6_addr im6s_addr; } ;
struct in6_multi {scalar_t__ in6m_nsrc; TYPE_1__* in6m_st; int in6m_srcs; } ;
struct TYPE_2__ {int iss_rec; } ;


 int ENOMEM ;
 int ENOSPC ;
 int IN6M_LOCK_ASSERT_HELD (struct in6_multi*) ;
 int M_WAITOK ;
 struct ip6_msource* RB_FIND (int ,int *,struct ip6_msource*) ;
 int RB_INSERT (int ,int *,struct ip6_msource*) ;
 scalar_t__ in6_mcast_maxgrpsrc ;
 int ip6_msource_tree ;
 struct ip6_msource* ip6ms_alloc (int ) ;

int
in6m_record_source(struct in6_multi *inm, const struct in6_addr *addr)
{
 struct ip6_msource find;
 struct ip6_msource *ims, *nims;

 IN6M_LOCK_ASSERT_HELD(inm);

 find.im6s_addr = *addr;
 ims = RB_FIND(ip6_msource_tree, &inm->in6m_srcs, &find);
 if (ims && ims->im6s_stp)
  return (0);
 if (ims == ((void*)0)) {
  if (inm->in6m_nsrc == in6_mcast_maxgrpsrc)
   return (-ENOSPC);
  nims = ip6ms_alloc(M_WAITOK);
  if (nims == ((void*)0))
   return (-ENOMEM);
  nims->im6s_addr = find.im6s_addr;
  RB_INSERT(ip6_msource_tree, &inm->in6m_srcs, nims);
  ++inm->in6m_nsrc;
  ims = nims;
 }





 ++ims->im6s_stp;
 ++inm->in6m_st[1].iss_rec;

 return (1);
}
