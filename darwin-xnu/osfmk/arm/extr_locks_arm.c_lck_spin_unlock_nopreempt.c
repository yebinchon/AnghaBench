
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int hwlock; int lck_spin_data; } ;
typedef TYPE_1__ lck_spin_t ;


 scalar_t__ LCK_MTX_STATE_TO_THREAD (int ) ;
 scalar_t__ LCK_SPIN_TYPE ;
 scalar_t__ LOCK_CORRECTNESS_PANIC () ;
 scalar_t__ current_thread () ;
 int hw_lock_unlock_nopreempt (int *) ;
 int panic (char*,TYPE_1__*,...) ;

void
lck_spin_unlock_nopreempt(lck_spin_t *lock)
{






 hw_lock_unlock_nopreempt(&lock->hwlock);
}
