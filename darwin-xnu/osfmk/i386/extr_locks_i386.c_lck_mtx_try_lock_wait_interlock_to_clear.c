
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_MTX_ILOCKED_MSK ;
 int LCK_MTX_MLOCKED_MSK ;
 int LCK_MTX_SPIN_MSK ;
 int TRUE ;
 int cpu_pause () ;
 int ordered_load_mtx_state (int *) ;

__attribute__((used)) __attribute__((always_inline))
static boolean_t
lck_mtx_try_lock_wait_interlock_to_clear(
 lck_mtx_t *lock,
 uint32_t* new_state)
{
 uint32_t state;

 for ( ; ; ) {
  cpu_pause();
  state = ordered_load_mtx_state(lock);
  if (state & (LCK_MTX_MLOCKED_MSK | LCK_MTX_SPIN_MSK)) {

   return FALSE;
  }
  if (!(state & LCK_MTX_ILOCKED_MSK)) {
   *new_state = state;
   return TRUE;
  }
 }
}
