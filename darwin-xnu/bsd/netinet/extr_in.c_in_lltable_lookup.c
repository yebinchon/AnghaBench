
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct lltable {int llt_af; int llt_ifp; } ;
struct llentry {int dummy; } ;


 scalar_t__ AF_INET ;
 int IF_AFDATA_WLOCK_ASSERT (int ,int ) ;
 int KASSERT (int,char*) ;
 int LLE_EXCLUSIVE ;
 int LLE_RLOCK (struct llentry*) ;
 int LLE_UNLOCKED ;
 int LLE_WLOCK (struct llentry*) ;
 struct llentry* in_lltable_find_dst (struct lltable*,int ) ;

__attribute__((used)) static struct llentry *
in_lltable_lookup(struct lltable *llt, u_int flags, const struct sockaddr *l3addr)
{
 const struct sockaddr_in *sin = (const struct sockaddr_in *)(const void *)l3addr;
 struct llentry *lle;

 IF_AFDATA_WLOCK_ASSERT(llt->llt_ifp, llt->llt_af);

 KASSERT(l3addr->sa_family == AF_INET,
   ("sin_family %d", l3addr->sa_family));
 lle = in_lltable_find_dst(llt, sin->sin_addr);

 if (lle == ((void*)0))
  return (((void*)0));

 KASSERT((flags & (LLE_UNLOCKED|LLE_EXCLUSIVE)) !=
     (LLE_UNLOCKED|LLE_EXCLUSIVE),("wrong lle request flags: 0x%X",
         flags));

 if (flags & LLE_UNLOCKED)
  return (lle);

 if (flags & LLE_EXCLUSIVE)
  LLE_WLOCK(lle);
 else
  LLE_RLOCK(lle);

 return (lle);
}
