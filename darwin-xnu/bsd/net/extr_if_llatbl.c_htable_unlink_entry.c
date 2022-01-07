
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct llentry {int la_flags; int * lle_head; TYPE_1__* lle_tbl; } ;
struct TYPE_2__ {int llt_af; int llt_ifp; } ;


 int IF_AFDATA_WLOCK_ASSERT (int ,int ) ;
 int LIST_REMOVE (struct llentry*,int ) ;
 int LLE_LINKED ;
 int LLE_VALID ;
 int lle_next ;

__attribute__((used)) static void
htable_unlink_entry(struct llentry *lle)
{
 if ((lle->la_flags & LLE_LINKED) != 0) {
  IF_AFDATA_WLOCK_ASSERT(lle->lle_tbl->llt_ifp, lle->lle_tbl->llt_af);
  LIST_REMOVE(lle, lle_next);
  lle->la_flags &= ~(LLE_VALID | LLE_LINKED);




 }
}
