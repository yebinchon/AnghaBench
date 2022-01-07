
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ want_upgrade; scalar_t__ want_excl; int data; } ;
typedef TYPE_1__ lck_rw_word_t ;
typedef int lck_rw_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int LCK_RW_ASSERT_SHARED ;
 scalar_t__ TRUE ;
 int lck_rw_assert (int *,int ) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int mutex_pause (int) ;
 int ordered_load_rw (int *) ;

boolean_t
lck_rw_lock_yield_shared(lck_rw_t *lck, boolean_t force_yield)
{
 lck_rw_word_t word;

 lck_rw_assert(lck, LCK_RW_ASSERT_SHARED);

 word.data = ordered_load_rw(lck);
 if (word.want_excl || word.want_upgrade || force_yield) {
  lck_rw_unlock_shared(lck);
  mutex_pause(2);
  lck_rw_lock_shared(lck);
  return TRUE;
 }

 return FALSE;
}
