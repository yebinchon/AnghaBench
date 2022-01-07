
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 uintptr_t LCK_ILOCK ;
 scalar_t__ LCK_MTX_STATE_TO_THREAD (uintptr_t) ;
 uintptr_t LCK_MTX_TAG_DESTROYED ;
 int TRUE ;
 scalar_t__ not_in_kdp ;
 uintptr_t ordered_load_mtx (int *) ;
 int panic (char*) ;

boolean_t
kdp_lck_mtx_lock_spin_is_acquired(lck_mtx_t *lck)
{
 uintptr_t state;

 if (not_in_kdp) {
  panic("panic: spinlock acquired check done outside of kernel debugger");
 }
 state = ordered_load_mtx(lck);
 if (state == LCK_MTX_TAG_DESTROYED)
  return FALSE;
 if (LCK_MTX_STATE_TO_THREAD(state) || (state & LCK_ILOCK))
  return TRUE;
 return FALSE;
}
