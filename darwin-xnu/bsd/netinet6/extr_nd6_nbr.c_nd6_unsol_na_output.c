
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {int ia_ifa; TYPE_1__ ia_addr; } ;
struct ifnet {int if_flags; int if_eflags; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;


 int IFA_LOCK_SPIN (int *) ;
 int IFA_UNLOCK (int *) ;
 int IFEF_IPV6_ND6ALT ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int LOG_INFO ;
 int ND_NA_FLAG_OVERRIDE ;
 int if_name (struct ifnet*) ;
 scalar_t__ in6_setscope (struct in6_addr*,struct ifnet*,int *) ;
 struct in6_addr in6addr_linklocal_allnodes ;
 int nd6_na_output (struct ifnet*,struct in6_addr*,struct in6_addr*,int ,int,int *) ;
 int nd6log (int ) ;

__attribute__((used)) static void
nd6_unsol_na_output(struct ifaddr *ifa)
{
 struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
 struct ifnet *ifp = ifa->ifa_ifp;
 struct in6_addr saddr6, taddr6;

 if ((ifp->if_flags & IFF_UP) == 0 ||
     (ifp->if_flags & IFF_RUNNING) == 0 ||
     (ifp->if_eflags & IFEF_IPV6_ND6ALT) != 0)
  return;

 IFA_LOCK_SPIN(&ia->ia_ifa);
 taddr6 = ia->ia_addr.sin6_addr;
 IFA_UNLOCK(&ia->ia_ifa);
 if (in6_setscope(&taddr6, ifp, ((void*)0)) != 0)
  return;
 saddr6 = in6addr_linklocal_allnodes;
 if (in6_setscope(&saddr6, ifp, ((void*)0)) != 0)
  return;

 nd6log((LOG_INFO, "%s: sending unsolicited NA\n",
     if_name(ifa->ifa_ifp)));

 nd6_na_output(ifp, &saddr6, &taddr6, ND_NA_FLAG_OVERRIDE, 1, ((void*)0));
}
