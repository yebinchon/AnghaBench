
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ thread_t ;
struct TYPE_7__ {int lck_mtx_data; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 uintptr_t LCK_ILOCK ;
 scalar_t__ LCK_MTX_SPIN_TAG ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 int LCK_MTX_THREAD_TO_STATE (scalar_t__) ;
 int LOCKSTAT_RECORD (int ,TYPE_1__*,int ) ;
 int LS_LCK_MTX_UNLOCK_RELEASE ;
 int TRUE ;
 scalar_t__ atomic_compare_exchange (int *,int ,int ,int ,int ) ;
 scalar_t__ current_thread () ;
 int lck_mtx_unlock_contended (TYPE_1__*,scalar_t__,int ) ;
 int lck_mtx_verify (TYPE_1__*) ;
 int memory_order_release_smp ;
 uintptr_t ordered_load_mtx (TYPE_1__*) ;

void
lck_mtx_unlock(lck_mtx_t *lock)
{
 thread_t thread = current_thread();
 uintptr_t state;
 boolean_t ilk_held = FALSE;

 lck_mtx_verify(lock);

 state = ordered_load_mtx(lock);
 if (state & LCK_ILOCK) {
  if(LCK_MTX_STATE_TO_THREAD(state) == (thread_t)LCK_MTX_SPIN_TAG)
   ilk_held = TRUE;
  goto slow_case;
 }

 if (atomic_compare_exchange(&lock->lck_mtx_data, LCK_MTX_THREAD_TO_STATE(thread), 0,
     memory_order_release_smp, FALSE)) {



  return;
 }
slow_case:
 lck_mtx_unlock_contended(lock, thread, ilk_held);
}
