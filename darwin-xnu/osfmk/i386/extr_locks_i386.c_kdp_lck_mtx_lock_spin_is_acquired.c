
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lck_mtx_mlocked; scalar_t__ lck_mtx_ilocked; } ;
typedef TYPE_1__ lck_mtx_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ not_in_kdp ;
 int panic (char*) ;

boolean_t
kdp_lck_mtx_lock_spin_is_acquired(lck_mtx_t *lck)
{
 if (not_in_kdp) {
  panic("panic: kdp_lck_mtx_lock_spin_is_acquired called outside of kernel debugger");
 }

 if (lck->lck_mtx_ilocked || lck->lck_mtx_mlocked) {
  return TRUE;
 }

 return FALSE;
}
