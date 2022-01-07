
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lck_mtx_type; scalar_t__ lck_mtx_tag; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int lck_grp_t ;


 int LCK_MTX_ASSERT_NOTOWNED ;
 scalar_t__ LCK_MTX_TAG_DESTROYED ;
 scalar_t__ LCK_MTX_TYPE ;
 int LCK_TYPE_MTX ;
 int lck_grp_deallocate (int *) ;
 int lck_grp_lckcnt_decr (int *,int ) ;
 int lck_mtx_assert (TYPE_1__*,int ) ;
 int panic (char*,TYPE_1__*) ;

void
lck_mtx_destroy(
  lck_mtx_t * lck,
  lck_grp_t * grp)
{
 if (lck->lck_mtx_type != LCK_MTX_TYPE)
  panic("Destroying invalid mutex %p", lck);
 if (lck->lck_mtx_tag == LCK_MTX_TAG_DESTROYED)
  panic("Destroying previously destroyed lock %p", lck);
 lck_mtx_assert(lck, LCK_MTX_ASSERT_NOTOWNED);
 lck->lck_mtx_tag = LCK_MTX_TAG_DESTROYED;
 lck_grp_lckcnt_decr(grp, LCK_TYPE_MTX);
 lck_grp_deallocate(grp);
 return;
}
