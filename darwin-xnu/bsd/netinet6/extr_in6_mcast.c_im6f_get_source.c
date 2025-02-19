
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct ip6_msource {int im6s_addr; } ;
struct in6_msource {int * im6sl_st; int im6s_addr; } ;
struct in6_mfilter {scalar_t__ im6f_nsrc; int im6f_sources; } ;


 int ENOMEM ;
 int ENOSPC ;
 int MCAST_UNDEFINED ;
 int M_WAITOK ;
 struct ip6_msource* RB_FIND (int ,int *,struct ip6_msource*) ;
 int RB_INSERT (int ,int *,struct ip6_msource*) ;
 scalar_t__ in6_mcast_maxsocksrc ;
 struct in6_msource* in6ms_alloc (int ) ;
 int ip6_msource_tree ;

__attribute__((used)) static int
im6f_get_source(struct in6_mfilter *imf, const struct sockaddr_in6 *psin,
    struct in6_msource **plims)
{
 struct ip6_msource find;
 struct ip6_msource *ims;
 struct in6_msource *lims;
 int error;

 error = 0;
 ims = ((void*)0);
 lims = ((void*)0);

 find.im6s_addr = psin->sin6_addr;
 ims = RB_FIND(ip6_msource_tree, &imf->im6f_sources, &find);
 lims = (struct in6_msource *)ims;
 if (lims == ((void*)0)) {
  if (imf->im6f_nsrc == in6_mcast_maxsocksrc)
   return (ENOSPC);
  lims = in6ms_alloc(M_WAITOK);
  if (lims == ((void*)0))
   return (ENOMEM);
  lims->im6s_addr = find.im6s_addr;
  lims->im6sl_st[0] = MCAST_UNDEFINED;
  RB_INSERT(ip6_msource_tree, &imf->im6f_sources,
      (struct ip6_msource *)lims);
  ++imf->im6f_nsrc;
 }

 *plims = lims;

 return (error);
}
