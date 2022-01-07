
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lck_mtx_tag; int lck_mtx_ptr; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int lck_mtx_ext_t ;
typedef int lck_grp_t ;
typedef int boolean_t ;


 int LCK_MTX_ASSERT_NOTOWNED ;
 scalar_t__ LCK_MTX_TAG_DESTROYED ;
 scalar_t__ LCK_MTX_TAG_INDIRECT ;
 int LCK_TYPE_MTX ;
 int kfree (int ,int) ;
 int lck_grp_deallocate (int *) ;
 int lck_grp_lckcnt_decr (int *,int ) ;
 int lck_mtx_assert (TYPE_1__*,int ) ;
 int lck_mtx_lock_mark_destroyed (TYPE_1__*,int) ;

void
lck_mtx_destroy(
 lck_mtx_t *lck,
 lck_grp_t *grp)
{
 boolean_t indirect;

 if (lck->lck_mtx_tag == LCK_MTX_TAG_DESTROYED)
  return;



 indirect = (lck->lck_mtx_tag == LCK_MTX_TAG_INDIRECT);

 lck_mtx_lock_mark_destroyed(lck, indirect);

 if (indirect)
  kfree(lck->lck_mtx_ptr, sizeof(lck_mtx_ext_t));
 lck_grp_lckcnt_decr(grp, LCK_TYPE_MTX);
 lck_grp_deallocate(grp);
 return;
}
