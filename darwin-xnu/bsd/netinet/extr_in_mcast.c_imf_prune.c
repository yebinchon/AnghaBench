
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ip_msource {int ims_haddr; } ;
struct in_msource {int * imsl_st; } ;
struct in_mfilter {int imf_sources; } ;


 int ENOENT ;
 int MCAST_UNDEFINED ;
 struct ip_msource* RB_FIND (int ,int *,struct ip_msource*) ;
 int ip_msource_tree ;
 int ntohl (int ) ;

__attribute__((used)) static int
imf_prune(struct in_mfilter *imf, const struct sockaddr_in *psin)
{
 struct ip_msource find;
 struct ip_msource *ims;
 struct in_msource *lims;


 find.ims_haddr = ntohl(psin->sin_addr.s_addr);
 ims = RB_FIND(ip_msource_tree, &imf->imf_sources, &find);
 if (ims == ((void*)0))
  return (ENOENT);
 lims = (struct in_msource *)ims;
 lims->imsl_st[1] = MCAST_UNDEFINED;
 return (0);
}
