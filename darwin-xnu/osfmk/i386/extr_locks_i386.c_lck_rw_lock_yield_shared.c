
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lck_rw_want_upgrade; scalar_t__ lck_rw_want_write; } ;
typedef TYPE_1__ lck_rw_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int LCK_RW_ASSERT_SHARED ;
 scalar_t__ TRUE ;
 int lck_rw_assert (TYPE_1__*,int ) ;
 int lck_rw_lock_shared (TYPE_1__*) ;
 int lck_rw_unlock_shared (TYPE_1__*) ;
 int mutex_pause (int) ;

boolean_t
lck_rw_lock_yield_shared(lck_rw_t *lck, boolean_t force_yield)
{
 lck_rw_assert(lck, LCK_RW_ASSERT_SHARED);

 if (lck->lck_rw_want_write || lck->lck_rw_want_upgrade || force_yield) {
  lck_rw_unlock_shared(lck);
  mutex_pause(2);
  lck_rw_lock_shared(lck);
  return TRUE;
 }

 return FALSE;
}
