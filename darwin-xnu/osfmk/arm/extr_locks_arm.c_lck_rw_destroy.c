
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lck_rw_tag; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int lck_grp_t ;


 int LCK_RW_ASSERT_NOTHELD ;
 scalar_t__ LCK_RW_TAG_DESTROYED ;
 int LCK_TYPE_RW ;
 int lck_grp_deallocate (int *) ;
 int lck_grp_lckcnt_decr (int *,int ) ;
 int lck_rw_assert (TYPE_1__*,int ) ;

void
lck_rw_destroy(
 lck_rw_t *lck,
 lck_grp_t *grp)
{
 if (lck->lck_rw_tag == LCK_RW_TAG_DESTROYED)
  return;



 lck->lck_rw_tag = LCK_RW_TAG_DESTROYED;
 lck_grp_lckcnt_decr(grp, LCK_TYPE_RW);
 lck_grp_deallocate(grp);
 return;
}
