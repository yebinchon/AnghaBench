
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ interlock; } ;
typedef TYPE_1__ lck_spin_t ;
typedef int lck_grp_t ;


 scalar_t__ LCK_SPIN_TAG_DESTROYED ;
 int LCK_TYPE_SPIN ;
 int lck_grp_deallocate (int *) ;
 int lck_grp_lckcnt_decr (int *,int ) ;

void
lck_spin_destroy(
 lck_spin_t *lck,
 lck_grp_t *grp)
{
 if (lck->interlock == LCK_SPIN_TAG_DESTROYED)
  return;
 lck->interlock = LCK_SPIN_TAG_DESTROYED;
 lck_grp_lckcnt_decr(grp, LCK_TYPE_SPIN);
 lck_grp_deallocate(grp);
 return;
}
