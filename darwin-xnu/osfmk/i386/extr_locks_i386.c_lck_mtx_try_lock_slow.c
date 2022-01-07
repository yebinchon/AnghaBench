
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct _lck_mtx_ext_ {int dummy; } ;
typedef int lck_mtx_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int mutex_count; } ;


 scalar_t__ FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_TAG_DESTROYED ;
 int LCK_MTX_TAG_INDIRECT ;
 int LCK_MTX_WAITERS_MSK ;
 scalar_t__ TRUE ;
 scalar_t__ __improbable (int) ;
 TYPE_1__* current_thread () ;
 scalar_t__ get_indirect_mutex (int **,int*) ;
 int lck_mtx_interlock_try_lock_set_flags (int *,int,int*) ;
 scalar_t__ lck_mtx_try_destroyed (int *) ;
 scalar_t__ lck_mtx_try_lock_acquire_tail (int *) ;
 int lck_mtx_try_lock_finish_inline (int *,int) ;
 int lck_mtx_try_lock_wait_interlock_to_clear (int *,int*) ;
 int lck_mtx_update_miss (struct _lck_mtx_ext_*,int*) ;
 int lck_mtx_update_util (struct _lck_mtx_ext_*) ;
 int ordered_load_mtx_state (int *) ;
 int ordered_store_mtx_owner (int *,uintptr_t) ;

__attribute__((noinline))
boolean_t
lck_mtx_try_lock_slow(
 lck_mtx_t *lock)
{
 boolean_t indirect = FALSE;
 uint32_t state;
 int first_miss = 0;

 state = ordered_load_mtx_state(lock);


 if (__improbable(state & ((LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))) {







  if (__improbable(!(state & LCK_MTX_ILOCKED_MSK))){
   return FALSE;
  }


  if (__improbable(state == LCK_MTX_TAG_DESTROYED)) {
   return lck_mtx_try_destroyed(lock);
  }


  if (__improbable(state == LCK_MTX_TAG_INDIRECT)) {
   indirect = get_indirect_mutex(&lock, &state);

   first_miss = 0;
   lck_mtx_update_util((struct _lck_mtx_ext_*)lock);
  }

  if (!lck_mtx_try_lock_wait_interlock_to_clear(lock, &state)) {
   if (indirect)
    lck_mtx_update_miss((struct _lck_mtx_ext_*)lock, &first_miss);
   return FALSE;
  }
 }


 while (__improbable(!lck_mtx_interlock_try_lock_set_flags(lock, LCK_MTX_MLOCKED_MSK, &state))) {
  if (!lck_mtx_try_lock_wait_interlock_to_clear(lock, &state)) {
   if (indirect)
    lck_mtx_update_miss((struct _lck_mtx_ext_*)lock, &first_miss);
   return FALSE;
  }
 }



 thread_t thread = current_thread();

 ordered_store_mtx_owner(lock, (uintptr_t)thread);
 if (__improbable(state & LCK_MTX_WAITERS_MSK)) {
  return lck_mtx_try_lock_acquire_tail(lock);
 }


 lck_mtx_try_lock_finish_inline(lock, ordered_load_mtx_state(lock));

 return TRUE;

}
