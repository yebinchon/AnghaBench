
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lck_rw_shared_count; scalar_t__ lck_rw_want_excl; scalar_t__ lck_rw_want_upgrade; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ not_in_kdp ;
 int panic (char*) ;

boolean_t
kdp_lck_rw_lock_is_acquired_exclusive(lck_rw_t *lck) {
 if (not_in_kdp) {
  panic("panic: rw lock exclusive check done outside of kernel debugger");
 }
 return ((lck->lck_rw_want_upgrade || lck->lck_rw_want_excl) && (lck->lck_rw_shared_count == 0)) ? TRUE : FALSE;
}
