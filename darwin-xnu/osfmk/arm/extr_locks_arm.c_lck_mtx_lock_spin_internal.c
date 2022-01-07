
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef scalar_t__ boolean_t ;


 uintptr_t ARM_LCK_WAITERS ;
 uintptr_t LCK_ILOCK ;
 uintptr_t LCK_MTX_SPIN_TAG ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 int LOCKSTAT_RECORD (int ,int *,int ) ;
 int LS_LCK_MTX_LOCK_SPIN_ACQUIRE ;
 int TRUE ;
 int current_thread () ;
 int interlock_lock (int *) ;
 int lck_mtx_lock_contended (int *,int ,int ) ;
 int load_memory_barrier () ;
 uintptr_t ordered_load_mtx (int *) ;
 int ordered_store_mtx (int *,uintptr_t) ;
 int panic (char*,int *) ;

__attribute__((used)) static inline void
lck_mtx_lock_spin_internal(lck_mtx_t *lock, boolean_t allow_held_as_mutex)
{
 uintptr_t state;

 interlock_lock(lock);
 state = ordered_load_mtx(lock);
 if (LCK_MTX_STATE_TO_THREAD(state)) {
  if (allow_held_as_mutex)
   lck_mtx_lock_contended(lock, current_thread(), TRUE);
  else



   panic("Attempting to block on a lock taken as spin-always %p", lock);
  return;
 }
 state &= ARM_LCK_WAITERS;
 state |= (LCK_MTX_SPIN_TAG | LCK_ILOCK);
 ordered_store_mtx(lock, state);
 load_memory_barrier();




}
