
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
struct ifnet {int dummy; } ;


 int FALSE ;
 scalar_t__ IFNET_IS_EXPENSIVE (struct ifnet*) ;


 int IFRTYPE_FUNCTIONAL_LAST ;





 int NSTAT_IFNET_IS_AWDL ;
 int NSTAT_IFNET_IS_CELLULAR ;
 int NSTAT_IFNET_IS_EXPENSIVE ;
 int NSTAT_IFNET_IS_LOOPBACK ;
 int NSTAT_IFNET_IS_UNKNOWN_TYPE ;
 int NSTAT_IFNET_IS_WIFI ;
 int NSTAT_IFNET_IS_WIRED ;
 int VERIFY (int) ;
 int if_functional_type (struct ifnet*,int ) ;

u_int16_t
nstat_ifnet_to_flags(
 struct ifnet *ifp)
{
 u_int16_t flags = 0;
 u_int32_t functional_type = if_functional_type(ifp, FALSE);


 VERIFY(0 <= functional_type && functional_type <= IFRTYPE_FUNCTIONAL_LAST);

 switch (functional_type)
 {
 case 131:
  flags |= NSTAT_IFNET_IS_UNKNOWN_TYPE;
  break;
 case 132:
  flags |= NSTAT_IFNET_IS_LOOPBACK;
  break;
 case 128:
 case 133:
  flags |= NSTAT_IFNET_IS_WIRED;
  break;
 case 129:
  flags |= NSTAT_IFNET_IS_WIFI;
  break;
 case 130:
  flags |= NSTAT_IFNET_IS_WIFI;
  flags |= NSTAT_IFNET_IS_AWDL;
  break;
 case 134:
  flags |= NSTAT_IFNET_IS_CELLULAR;
  break;
 }

 if (IFNET_IS_EXPENSIVE(ifp))
 {
  flags |= NSTAT_IFNET_IS_EXPENSIVE;
 }

 return flags;
}
