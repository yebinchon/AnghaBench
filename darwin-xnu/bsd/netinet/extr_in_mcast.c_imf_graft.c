
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct ip_msource {int dummy; } ;
struct in_msource {int * imsl_st; int ims_haddr; } ;
struct in_mfilter {int imf_nsrc; int imf_sources; } ;


 int MCAST_UNDEFINED ;
 int M_WAITOK ;
 int RB_INSERT (int ,int *,struct ip_msource*) ;
 struct in_msource* inms_alloc (int ) ;
 int ip_msource_tree ;
 int ntohl (int ) ;

__attribute__((used)) static struct in_msource *
imf_graft(struct in_mfilter *imf, const uint8_t st1,
    const struct sockaddr_in *psin)
{
 struct in_msource *lims;

 lims = inms_alloc(M_WAITOK);
 if (lims == ((void*)0))
  return (((void*)0));
 lims->ims_haddr = ntohl(psin->sin_addr.s_addr);
 lims->imsl_st[0] = MCAST_UNDEFINED;
 lims->imsl_st[1] = st1;
 RB_INSERT(ip_msource_tree, &imf->imf_sources,
     (struct ip_msource *)lims);
 ++imf->imf_nsrc;

 return (lims);
}
