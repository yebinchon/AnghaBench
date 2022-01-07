
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct ip6_msource {int dummy; } ;
struct in6_msource {int * im6sl_st; int im6s_addr; } ;
struct in6_mfilter {int im6f_nsrc; int im6f_sources; } ;


 int MCAST_UNDEFINED ;
 int M_WAITOK ;
 int RB_INSERT (int ,int *,struct ip6_msource*) ;
 struct in6_msource* in6ms_alloc (int ) ;
 int ip6_msource_tree ;

__attribute__((used)) static struct in6_msource *
im6f_graft(struct in6_mfilter *imf, const uint8_t st1,
    const struct sockaddr_in6 *psin)
{
 struct in6_msource *lims;

 lims = in6ms_alloc(M_WAITOK);
 if (lims == ((void*)0))
  return (((void*)0));
 lims->im6s_addr = psin->sin6_addr;
 lims->im6sl_st[0] = MCAST_UNDEFINED;
 lims->im6sl_st[1] = st1;
 RB_INSERT(ip6_msource_tree, &imf->im6f_sources,
     (struct ip6_msource *)lims);
 ++imf->im6f_nsrc;

 return (lims);
}
