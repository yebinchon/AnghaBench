
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int r_flags; int la_flags; int ll_addr; } ;
struct ifnet {int if_addrlen; } ;


 int LLE_VALID ;
 int RLLE_VALID ;
 int bcopy (char const*,int *,int ) ;

void
lltable_set_entry_addr(struct ifnet *ifp, struct llentry *lle,
    const char *ll_addr)
{
 bcopy(ll_addr, &lle->ll_addr, ifp->if_addrlen);
 lle->la_flags |= LLE_VALID;
 lle->r_flags |= RLLE_VALID;
}
