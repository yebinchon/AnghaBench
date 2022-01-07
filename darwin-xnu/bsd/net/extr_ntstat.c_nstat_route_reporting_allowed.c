
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct rtentry {struct ifnet* rt_ifp; } ;
struct ifnet {int dummy; } ;
struct TYPE_3__ {int npf_flags; } ;
typedef TYPE_1__ nstat_provider_filter ;
typedef scalar_t__ nstat_provider_cookie_t ;


 int NSTAT_FILTER_IFNET_FLAGS ;
 int nstat_ifnet_to_flags (struct ifnet*) ;

__attribute__((used)) static bool
nstat_route_reporting_allowed(nstat_provider_cookie_t cookie, nstat_provider_filter *filter)
{
 bool retval = 1;

 if ((filter->npf_flags & NSTAT_FILTER_IFNET_FLAGS) != 0)
 {
  struct rtentry *rt = (struct rtentry*)cookie;
  struct ifnet *ifp = rt->rt_ifp;

  if (ifp)
  {
   uint16_t interface_properties = nstat_ifnet_to_flags(ifp);

   if ((filter->npf_flags & interface_properties) == 0)
   {
    retval = 0;
   }
  }
 }
 return retval;
}
