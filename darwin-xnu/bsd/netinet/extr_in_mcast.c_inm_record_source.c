
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_msource {scalar_t__ ims_stp; int ims_haddr; } ;
struct in_multi {scalar_t__ inm_nsrc; TYPE_1__* inm_st; int inm_srcs; } ;
typedef int in_addr_t ;
struct TYPE_2__ {int iss_rec; } ;


 int ENOMEM ;
 int ENOSPC ;
 int INM_LOCK_ASSERT_HELD (struct in_multi*) ;
 int M_WAITOK ;
 struct ip_msource* RB_FIND (int ,int *,struct ip_msource*) ;
 int RB_INSERT (int ,int *,struct ip_msource*) ;
 scalar_t__ in_mcast_maxgrpsrc ;
 int ip_msource_tree ;
 struct ip_msource* ipms_alloc (int ) ;
 int ntohl (int const) ;

int
inm_record_source(struct in_multi *inm, const in_addr_t naddr)
{
 struct ip_msource find;
 struct ip_msource *ims, *nims;

 INM_LOCK_ASSERT_HELD(inm);

 find.ims_haddr = ntohl(naddr);
 ims = RB_FIND(ip_msource_tree, &inm->inm_srcs, &find);
 if (ims && ims->ims_stp)
  return (0);
 if (ims == ((void*)0)) {
  if (inm->inm_nsrc == in_mcast_maxgrpsrc)
   return (-ENOSPC);
  nims = ipms_alloc(M_WAITOK);
  if (nims == ((void*)0))
   return (-ENOMEM);
  nims->ims_haddr = find.ims_haddr;
  RB_INSERT(ip_msource_tree, &inm->inm_srcs, nims);
  ++inm->inm_nsrc;
  ims = nims;
 }





 ++ims->ims_stp;
 ++inm->inm_st[1].iss_rec;

 return (1);
}
