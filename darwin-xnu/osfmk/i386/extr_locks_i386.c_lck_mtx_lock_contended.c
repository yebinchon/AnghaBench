
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct _lck_mtx_ext_ {int dummy; } ;
struct TYPE_15__ {scalar_t__ lck_mtx_owner; } ;
typedef TYPE_2__ lck_mtx_t ;
typedef int lck_mtx_spinwait_ret_type_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ was_promoted_on_wakeup; int mutex_count; } ;


 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;



 int LCK_MTX_WAITERS_MSK ;
 int assert (int) ;
 TYPE_1__* current_thread () ;
 int lck_mtx_interlock_lock (TYPE_2__*,int*) ;
 void lck_mtx_lock_acquire_tail (TYPE_2__*,scalar_t__) ;
 int lck_mtx_lock_finish_inline (TYPE_2__*,int,scalar_t__) ;
 int lck_mtx_lock_spinwait_x86 (TYPE_2__*) ;
 int lck_mtx_lock_wait_x86 (TYPE_2__*) ;
 int lck_mtx_update_direct_wait (struct _lck_mtx_ext_*) ;
 int lck_mtx_update_miss (struct _lck_mtx_ext_*,scalar_t__*) ;
 int lck_mtx_update_wait (struct _lck_mtx_ext_*,scalar_t__*) ;
 int ordered_load_mtx_state (TYPE_2__*) ;
 int ordered_store_mtx_owner (TYPE_2__*,uintptr_t) ;
 int ordered_store_mtx_state_release (TYPE_2__*,int) ;
 int panic (char*,int,TYPE_2__*) ;

__attribute__((used)) __attribute__((noinline))
static void
lck_mtx_lock_contended(
 lck_mtx_t *lock,
 boolean_t indirect,
 boolean_t *first_miss)
{
 lck_mtx_spinwait_ret_type_t ret;
 uint32_t state;
 thread_t thread;

try_again:

 if (indirect) {
  lck_mtx_update_miss((struct _lck_mtx_ext_*)lock, first_miss);
 }

 ret = lck_mtx_lock_spinwait_x86(lock);
 state = ordered_load_mtx_state(lock);
 switch (ret) {
 case 129:




  if (indirect) {
   lck_mtx_update_direct_wait((struct _lck_mtx_ext_*)lock);
  }


 case 128:




  lck_mtx_interlock_lock(lock, &state);
  assert(state & LCK_MTX_ILOCKED_MSK);

  if (state & LCK_MTX_MLOCKED_MSK) {
   if (indirect) {
    lck_mtx_update_wait((struct _lck_mtx_ext_*)lock, first_miss);
   }
   lck_mtx_lock_wait_x86(lock);



   goto try_again;
  } else {


   state |= LCK_MTX_MLOCKED_MSK;
   ordered_store_mtx_state_release(lock, state);
   thread = current_thread();
   ordered_store_mtx_owner(lock, (uintptr_t)thread);





  }

  break;
 case 130:






  break;
 default:
  panic("lck_mtx_lock_spinwait_x86 returned %d for mutex %p\n", ret, lock);
 }






 thread = (thread_t)lock->lck_mtx_owner;
 if (state & LCK_MTX_WAITERS_MSK || thread->was_promoted_on_wakeup) {
  return lck_mtx_lock_acquire_tail(lock, indirect);
 }


 lck_mtx_lock_finish_inline(lock, ordered_load_mtx_state(lock), indirect);
}
