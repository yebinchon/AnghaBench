
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; int r_flags; } ;
struct ifnet {TYPE_1__* if_lladdr; } ;
struct TYPE_2__ {int ifa_addr; } ;


 scalar_t__ AF_INET ;
 int KASSERT (int,char*) ;
 int LLADDR (int ) ;
 int LLE_CREATE ;
 int LLE_IFADDR ;
 int LLE_STATIC ;
 int LOG_INFO ;
 int RLLE_IFADDR ;
 int RLLE_VALID ;
 int SDL (int ) ;
 struct llentry* in_lltable_new (int ,int) ;
 scalar_t__ in_lltable_rtcheck (struct ifnet*,int,struct sockaddr const*) ;
 int lltable_set_entry_addr (struct ifnet*,struct llentry*,int ) ;
 int log (int ,char*) ;

__attribute__((used)) static struct llentry *
in_lltable_alloc(struct lltable *llt, u_int flags, const struct sockaddr *l3addr)
{
 const struct sockaddr_in *sin = (const struct sockaddr_in *) (const void *)l3addr;
 struct ifnet *ifp = llt->llt_ifp;
 struct llentry *lle;

 KASSERT(l3addr->sa_family == AF_INET,
   ("sin_family %d", l3addr->sa_family));






 if (!(flags & LLE_IFADDR) &&
   in_lltable_rtcheck(ifp, flags, l3addr) != 0)
  return (((void*)0));

 lle = in_lltable_new(sin->sin_addr, flags);
 if (lle == ((void*)0)) {
  log(LOG_INFO, "lla_lookup: new lle malloc failed\n");
  return (((void*)0));
 }
 lle->la_flags = flags & ~LLE_CREATE;
 if (flags & LLE_STATIC)
  lle->r_flags |= RLLE_VALID;
 if ((flags & LLE_IFADDR) == LLE_IFADDR) {
  lltable_set_entry_addr(ifp, lle, LLADDR(SDL(ifp->if_lladdr->ifa_addr)));
  lle->la_flags |= LLE_STATIC;
  lle->r_flags |= (RLLE_VALID | RLLE_IFADDR);
 }
 return (lle);
}
