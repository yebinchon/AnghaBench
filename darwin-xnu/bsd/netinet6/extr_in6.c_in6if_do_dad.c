
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_ifinfo {scalar_t__ initialized; int flags; } ;
struct ifnet {int if_flags; int if_eflags; scalar_t__ if_subfamily; int if_type; } ;


 int IFEF_DIRECTLINK ;
 int IFEF_IPV6_ND6ALT ;
 int IFEF_LOCALNET_PRIVATE ;
 int IFF_LOOPBACK ;
 int IFF_RUNNING ;
 int IFF_UP ;
 scalar_t__ IFNET_SUBFAMILY_IPSEC ;
 scalar_t__ IFNET_SUBFAMILY_UTUN ;


 int ND6_IFF_DAD ;
 struct nd_ifinfo* ND_IFINFO (struct ifnet*) ;
 scalar_t__ TRUE ;
 int VERIFY (int) ;

int
in6if_do_dad(
 struct ifnet *ifp)
{
 struct nd_ifinfo *ndi = ((void*)0);

 if ((ifp->if_flags & IFF_LOOPBACK) != 0)
  return (0);

 ndi = ND_IFINFO(ifp);
 VERIFY((((void*)0) != ndi) && (TRUE == ndi->initialized));
 if (!(ndi->flags & ND6_IFF_DAD))
  return (0);
 if (ifp->if_eflags &
     (IFEF_IPV6_ND6ALT|IFEF_LOCALNET_PRIVATE|IFEF_DIRECTLINK))
  return (0);

 if (ifp->if_subfamily == IFNET_SUBFAMILY_IPSEC ||
  ifp->if_subfamily == IFNET_SUBFAMILY_UTUN) {




  return (0);
 }

 switch (ifp->if_type) {

 case 129:

 case 128:






  return (0);
 default:
  if ((ifp->if_flags & (IFF_UP|IFF_RUNNING)) !=
      (IFF_UP|IFF_RUNNING))
   return (0);

  return (1);
 }
}
