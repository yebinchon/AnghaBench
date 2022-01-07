
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {void* lck_mtx_type; scalar_t__ lck_mtx_pri; scalar_t__ lck_mtx_waiters; int * lck_mtx_ptr; int lck_mtx_tag; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int lck_mtx_ext_t ;
typedef int lck_grp_t ;
struct TYPE_10__ {int lck_attr_val; } ;
typedef TYPE_2__ lck_attr_t ;


 int LCK_ATTR_DEBUG ;
 TYPE_2__* LCK_ATTR_NULL ;
 int LCK_MTX_TAG_INDIRECT ;
 void* LCK_MTX_TYPE ;
 int LCK_TYPE_MTX ;
 TYPE_2__ LockDefaultLckAttr ;
 scalar_t__ kalloc (int) ;
 int lck_grp_lckcnt_incr (int *,int ) ;
 int lck_grp_reference (int *) ;
 int lck_mtx_ext_init (int *,int *,TYPE_2__*) ;
 int ordered_store_mtx (TYPE_1__*,int ) ;

void
lck_mtx_init(
      lck_mtx_t * lck,
      lck_grp_t * grp,
      lck_attr_t * attr)
{



 lck_attr_t *lck_attr;

 if (attr != LCK_ATTR_NULL)
  lck_attr = attr;
 else
  lck_attr = &LockDefaultLckAttr;
 {
  lck->lck_mtx_ptr = ((void*)0);
  lck->lck_mtx_waiters = 0;
  lck->lck_mtx_pri = 0;
  lck->lck_mtx_type = LCK_MTX_TYPE;
  ordered_store_mtx(lck, 0);
 }
 lck_grp_reference(grp);
 lck_grp_lckcnt_incr(grp, LCK_TYPE_MTX);
}
