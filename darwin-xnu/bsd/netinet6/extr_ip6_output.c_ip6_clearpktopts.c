
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ip6po_rhi_rthdr; } ;
struct ip6_pktopts {int ip6po_hlim; int ip6po_tclass; int * ip6po_dest2; int ip6po_route; TYPE_1__ ip6po_rhinfo; int * ip6po_dest1; int * ip6po_hbh; int * ip6po_nexthop; int ip6po_nextroute; int * ip6po_pktinfo; } ;


 int FREE (int *,int ) ;
 int IPV6_DSTOPTS ;
 int IPV6_HOPLIMIT ;
 int IPV6_HOPOPTS ;
 int IPV6_NEXTHOP ;
 int IPV6_PKTINFO ;
 int IPV6_RTHDR ;
 int IPV6_RTHDRDSTOPTS ;
 int IPV6_TCLASS ;
 int M_IP6OPT ;
 int ROUTE_RELEASE (int *) ;

void
ip6_clearpktopts(struct ip6_pktopts *pktopt, int optname)
{
 if (pktopt == ((void*)0))
  return;

 if (optname == -1 || optname == IPV6_PKTINFO) {
  if (pktopt->ip6po_pktinfo)
   FREE(pktopt->ip6po_pktinfo, M_IP6OPT);
  pktopt->ip6po_pktinfo = ((void*)0);
 }
 if (optname == -1 || optname == IPV6_HOPLIMIT)
  pktopt->ip6po_hlim = -1;
 if (optname == -1 || optname == IPV6_TCLASS)
  pktopt->ip6po_tclass = -1;
 if (optname == -1 || optname == IPV6_NEXTHOP) {
  ROUTE_RELEASE(&pktopt->ip6po_nextroute);
  if (pktopt->ip6po_nexthop)
   FREE(pktopt->ip6po_nexthop, M_IP6OPT);
  pktopt->ip6po_nexthop = ((void*)0);
 }
 if (optname == -1 || optname == IPV6_HOPOPTS) {
  if (pktopt->ip6po_hbh)
   FREE(pktopt->ip6po_hbh, M_IP6OPT);
  pktopt->ip6po_hbh = ((void*)0);
 }
 if (optname == -1 || optname == IPV6_RTHDRDSTOPTS) {
  if (pktopt->ip6po_dest1)
   FREE(pktopt->ip6po_dest1, M_IP6OPT);
  pktopt->ip6po_dest1 = ((void*)0);
 }
 if (optname == -1 || optname == IPV6_RTHDR) {
  if (pktopt->ip6po_rhinfo.ip6po_rhi_rthdr)
   FREE(pktopt->ip6po_rhinfo.ip6po_rhi_rthdr, M_IP6OPT);
  pktopt->ip6po_rhinfo.ip6po_rhi_rthdr = ((void*)0);
  ROUTE_RELEASE(&pktopt->ip6po_route);
 }
 if (optname == -1 || optname == IPV6_DSTOPTS) {
  if (pktopt->ip6po_dest2)
   FREE(pktopt->ip6po_dest2, M_IP6OPT);
  pktopt->ip6po_dest2 = ((void*)0);
 }
}
