
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lltable {int llt_af; struct ifnet* llt_ifp; } ;
struct llentry {int la_flags; int lle_timer; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {size_t dropped; } ;


 int IF_AFDATA_WLOCK_ASSERT (struct ifnet*,int ) ;
 int KASSERT (int ,char*) ;
 int LLE_LINKED ;
 int LLE_REMREF (struct llentry*) ;
 int LLE_WLOCK_ASSERT (struct llentry*) ;
 TYPE_1__ arpstat ;
 scalar_t__ callout_stop (int *) ;
 size_t llentry_free (struct llentry*) ;
 int lltable_unlink_entry (struct lltable*,struct llentry*) ;

__attribute__((used)) static void
in_lltable_free_entry(struct lltable *llt, struct llentry *lle)
{
 struct ifnet *ifp;
 size_t pkts_dropped;

 LLE_WLOCK_ASSERT(lle);
 KASSERT(llt != ((void*)0), ("lltable is NULL"));


 if ((lle->la_flags & LLE_LINKED) != 0) {
  ifp = llt->llt_ifp;
  IF_AFDATA_WLOCK_ASSERT(ifp, llt->llt_af);
  lltable_unlink_entry(llt, lle);
 }







 pkts_dropped = llentry_free(lle);
 arpstat.dropped += pkts_dropped;
}
