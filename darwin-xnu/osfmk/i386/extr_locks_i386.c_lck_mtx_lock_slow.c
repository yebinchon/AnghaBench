
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct _lck_mtx_ext_ {int dummy; } ;
typedef int lck_mtx_t ;
typedef int boolean_t ;
struct TYPE_3__ {int mutex_count; } ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_SPIN_MSK ;
 int LCK_MTX_TAG_DESTROYED ;
 int LCK_MTX_TAG_INDIRECT ;
 int LCK_MTX_WAITERS_MSK ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int get_indirect_mutex (int **,int*) ;
 void lck_mtx_destroyed (int *) ;
 int lck_mtx_interlock_try_lock_set_flags (int *,int,int*) ;
 void lck_mtx_lock_acquire_tail (int *,int ) ;
 void lck_mtx_lock_contended (int *,int ,int*) ;
 int lck_mtx_lock_finish_inline (int *,int,int ) ;
 int lck_mtx_lock_wait_interlock_to_clear (int *,int*) ;
 int lck_mtx_update_miss (struct _lck_mtx_ext_*,int*) ;
 int lck_mtx_update_util (struct _lck_mtx_ext_*) ;
 int ordered_load_mtx_state (int *) ;
 int ordered_store_mtx_owner (int *,uintptr_t) ;

__attribute__((noinline))
void
lck_mtx_lock_slow(
 lck_mtx_t *lock)
{
 boolean_t indirect = FALSE;
 uint32_t state;
 int first_miss = 0;

 state = ordered_load_mtx_state(lock);


 if (__improbable(state & ((LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))) {
  if (__improbable(!(state & LCK_MTX_ILOCKED_MSK))){

   return lck_mtx_lock_contended(lock, indirect, &first_miss);
  }


  if (__improbable(state == LCK_MTX_TAG_DESTROYED)) {
   return lck_mtx_destroyed(lock);
  }


  if (__improbable(state == LCK_MTX_TAG_INDIRECT)) {
   indirect = get_indirect_mutex(&lock, &state);

   first_miss = 0;
   lck_mtx_update_util((struct _lck_mtx_ext_*)lock);

   if (state & LCK_MTX_SPIN_MSK) {

    assert(state & LCK_MTX_ILOCKED_MSK);
    lck_mtx_update_miss((struct _lck_mtx_ext_*)lock, &first_miss);
   }
  }

  if (!lck_mtx_lock_wait_interlock_to_clear(lock, &state)) {
   return lck_mtx_lock_contended(lock, indirect, &first_miss);
  }
 }


 while (__improbable(!lck_mtx_interlock_try_lock_set_flags(lock, LCK_MTX_MLOCKED_MSK, &state))) {
  if (!lck_mtx_lock_wait_interlock_to_clear(lock, &state)) {
   return lck_mtx_lock_contended(lock, indirect, &first_miss);
  }
 }



 thread_t thread = current_thread();

 ordered_store_mtx_owner(lock, (uintptr_t)thread);
 if (__improbable(state & LCK_MTX_WAITERS_MSK)) {
  return lck_mtx_lock_acquire_tail(lock, indirect);
 }


 lck_mtx_lock_finish_inline(lock, ordered_load_mtx_state(lock), indirect);

 return;
}
