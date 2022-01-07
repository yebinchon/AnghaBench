
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_in6 {int sin6_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; int ln_state; } ;
struct ifnet {TYPE_1__* if_lladdr; } ;
struct TYPE_2__ {int ifa_addr; } ;


 scalar_t__ AF_INET6 ;
 int KASSERT (int,char*) ;
 int LLADDR (int ) ;
 int LLE_IFADDR ;
 int LLE_STATIC ;
 int LOG_INFO ;
 int ND6_LLINFO_REACHABLE ;
 int SDL (int ) ;
 struct llentry* in6_lltable_new (int *,int) ;
 scalar_t__ in6_lltable_rtcheck (struct ifnet*,int,struct sockaddr const*) ;
 int lltable_set_entry_addr (struct ifnet*,struct llentry*,int ) ;
 int log (int ,char*) ;

__attribute__((used)) static struct llentry *
in6_lltable_alloc(struct lltable *llt, u_int flags,
  const struct sockaddr *l3addr)
{
 const struct sockaddr_in6 *sin6 = (const struct sockaddr_in6 *)(const void *)l3addr;
 struct ifnet *ifp = llt->llt_ifp;
 struct llentry *lle;

 KASSERT(l3addr->sa_family == AF_INET6,
   ("sin_family %d", l3addr->sa_family));






 if (!(flags & LLE_IFADDR) &&
   in6_lltable_rtcheck(ifp, flags, l3addr) != 0)
  return (((void*)0));

 lle = in6_lltable_new(&sin6->sin6_addr, flags);
 if (lle == ((void*)0)) {
  log(LOG_INFO, "lla_lookup: new lle malloc failed\n");
  return (((void*)0));
 }
 lle->la_flags = flags;
 if ((flags & LLE_IFADDR) == LLE_IFADDR) {
  lltable_set_entry_addr(ifp, lle, LLADDR(SDL(ifp->if_lladdr->ifa_addr)));
  lle->la_flags |= LLE_STATIC;
 }

 if ((lle->la_flags & LLE_STATIC) != 0)
  lle->ln_state = ND6_LLINFO_REACHABLE;

 return (lle);
}
