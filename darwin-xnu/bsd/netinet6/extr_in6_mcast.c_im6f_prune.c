
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct ip6_msource {int im6s_addr; } ;
struct in6_msource {int * im6sl_st; } ;
struct in6_mfilter {int im6f_sources; } ;


 int ENOENT ;
 int MCAST_UNDEFINED ;
 struct ip6_msource* RB_FIND (int ,int *,struct ip6_msource*) ;
 int ip6_msource_tree ;

__attribute__((used)) static int
im6f_prune(struct in6_mfilter *imf, const struct sockaddr_in6 *psin)
{
 struct ip6_msource find;
 struct ip6_msource *ims;
 struct in6_msource *lims;

 find.im6s_addr = psin->sin6_addr;
 ims = RB_FIND(ip6_msource_tree, &imf->im6f_sources, &find);
 if (ims == ((void*)0))
  return (ENOENT);
 lims = (struct in6_msource *)ims;
 lims->im6sl_st[1] = MCAST_UNDEFINED;
 return (0);
}
