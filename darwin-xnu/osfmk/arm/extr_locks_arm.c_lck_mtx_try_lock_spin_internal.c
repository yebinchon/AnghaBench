
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef scalar_t__ boolean_t ;


 uintptr_t ARM_LCK_WAITERS ;
 scalar_t__ FALSE ;
 uintptr_t LCK_ILOCK ;
 uintptr_t LCK_MTX_SPIN_TAG ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 int LOCKSTAT_RECORD (int ,int *,int ) ;
 int LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE ;
 scalar_t__ TRUE ;
 int interlock_try (int *) ;
 int interlock_unlock (int *) ;
 int load_memory_barrier () ;
 uintptr_t ordered_load_mtx (int *) ;
 int ordered_store_mtx (int *,uintptr_t) ;
 int panic (char*,int *) ;

__attribute__((used)) static inline boolean_t
lck_mtx_try_lock_spin_internal(lck_mtx_t *lock, boolean_t allow_held_as_mutex)
{
 uintptr_t state;

 if (!interlock_try(lock))
  return FALSE;
 state = ordered_load_mtx(lock);
 if(LCK_MTX_STATE_TO_THREAD(state)) {

  if (allow_held_as_mutex)
   interlock_unlock(lock);
  else



   panic("Spin-mutex held as full mutex %p", lock);
  return FALSE;
 }
 state &= ARM_LCK_WAITERS;
 state |= (LCK_MTX_SPIN_TAG | LCK_ILOCK);
 ordered_store_mtx(lock, state);
 load_memory_barrier();




 return TRUE;
}
