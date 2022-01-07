
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lck_spin_data; } ;
typedef TYPE_1__ lck_spin_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_SPIN_TAG_DESTROYED ;
 int TRUE ;
 scalar_t__ not_in_kdp ;
 int panic (char*) ;

boolean_t
kdp_lck_spin_is_acquired(lck_spin_t *lck) {
 if (not_in_kdp) {
  panic("panic: spinlock acquired check done outside of kernel debugger");
 }
 return ((lck->lck_spin_data & ~LCK_SPIN_TAG_DESTROYED) != 0) ? TRUE:FALSE;
}
