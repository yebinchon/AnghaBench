
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int if_flags; scalar_t__ if_subfamily; int if_eflags; scalar_t__ if_type; scalar_t__ if_family; } ;


 int IFEF_AWDL ;
 int IFF_LOOPBACK ;
 scalar_t__ IFNET_FAMILY_BOND ;
 scalar_t__ IFNET_FAMILY_ETHERNET ;
 scalar_t__ IFNET_FAMILY_FIREWIRE ;
 scalar_t__ IFNET_FAMILY_VLAN ;
 scalar_t__ IFNET_IS_CELLULAR (struct ifnet*) ;
 scalar_t__ IFNET_IS_INTCOPROC (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIFI (struct ifnet*) ;
 scalar_t__ IFNET_IS_WIRED (struct ifnet*) ;
 scalar_t__ IFNET_SUBFAMILY_WIFI ;
 int IFRTYPE_FUNCTIONAL_CELLULAR ;
 int IFRTYPE_FUNCTIONAL_INTCOPROC ;
 int IFRTYPE_FUNCTIONAL_LOOPBACK ;
 int IFRTYPE_FUNCTIONAL_UNKNOWN ;
 int IFRTYPE_FUNCTIONAL_WIFI_AWDL ;
 int IFRTYPE_FUNCTIONAL_WIFI_INFRA ;
 int IFRTYPE_FUNCTIONAL_WIRED ;
 scalar_t__ IFT_CELLULAR ;

u_int32_t
if_functional_type(struct ifnet *ifp, bool exclude_delegate)
{
 u_int32_t ret = IFRTYPE_FUNCTIONAL_UNKNOWN;
 if (ifp != ((void*)0)) {
  if (ifp->if_flags & IFF_LOOPBACK) {
   ret = IFRTYPE_FUNCTIONAL_LOOPBACK;
  } else if ((exclude_delegate &&
      (ifp->if_subfamily == IFNET_SUBFAMILY_WIFI)) ||
      (!exclude_delegate && IFNET_IS_WIFI(ifp))) {
   if (ifp->if_eflags & IFEF_AWDL)
    ret = IFRTYPE_FUNCTIONAL_WIFI_AWDL;
   else
    ret = IFRTYPE_FUNCTIONAL_WIFI_INFRA;
  } else if ((exclude_delegate &&
      (ifp->if_type == IFT_CELLULAR)) ||
      (!exclude_delegate && IFNET_IS_CELLULAR(ifp))) {
   ret = IFRTYPE_FUNCTIONAL_CELLULAR;
  } else if (IFNET_IS_INTCOPROC(ifp)) {
   ret = IFRTYPE_FUNCTIONAL_INTCOPROC;
  } else if ((exclude_delegate &&
      (ifp->if_family == IFNET_FAMILY_ETHERNET ||
      ifp->if_family == IFNET_FAMILY_BOND ||
      ifp->if_family == IFNET_FAMILY_VLAN ||
      ifp->if_family == IFNET_FAMILY_FIREWIRE)) ||
      (!exclude_delegate && IFNET_IS_WIRED(ifp))) {
   ret = IFRTYPE_FUNCTIONAL_WIRED;
  }
 }

 return (ret);
}
