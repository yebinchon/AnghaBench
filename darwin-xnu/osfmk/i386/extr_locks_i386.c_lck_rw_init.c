
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lck_rw_priv_excl; scalar_t__ lck_rw_tag; scalar_t__ lck_w_waiting; scalar_t__ lck_r_waiting; int lck_rw_can_sleep; scalar_t__ lck_rw_shared_count; void* lck_rw_want_upgrade; void* lck_rw_want_write; int lck_rw_interlock; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int lck_grp_t ;
struct TYPE_8__ {int lck_attr_val; } ;
typedef TYPE_2__ lck_attr_t ;


 void* FALSE ;
 TYPE_2__* LCK_ATTR_NULL ;
 int LCK_ATTR_RW_SHARED_PRIORITY ;
 int LCK_TYPE_RW ;
 TYPE_2__ LockDefaultLckAttr ;
 int TRUE ;
 int hw_lock_byte_init (int *) ;
 int lck_grp_lckcnt_incr (int *,int ) ;
 int lck_grp_reference (int *) ;

void
lck_rw_init(
 lck_rw_t *lck,
 lck_grp_t *grp,
 lck_attr_t *attr)
{
 lck_attr_t *lck_attr = (attr != LCK_ATTR_NULL) ?
     attr : &LockDefaultLckAttr;

 hw_lock_byte_init(&lck->lck_rw_interlock);
 lck->lck_rw_want_write = FALSE;
 lck->lck_rw_want_upgrade = FALSE;
 lck->lck_rw_shared_count = 0;
 lck->lck_rw_can_sleep = TRUE;
 lck->lck_r_waiting = lck->lck_w_waiting = 0;
 lck->lck_rw_tag = 0;
 lck->lck_rw_priv_excl = ((lck_attr->lck_attr_val &
    LCK_ATTR_RW_SHARED_PRIORITY) == 0);

 lck_grp_reference(grp);
 lck_grp_lckcnt_incr(grp, LCK_TYPE_RW);
}
