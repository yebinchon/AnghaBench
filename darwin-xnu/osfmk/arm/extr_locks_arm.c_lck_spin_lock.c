
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int hwlock; } ;
typedef TYPE_1__ lck_spin_t ;


 scalar_t__ LCK_SPIN_TYPE ;
 int hw_lock_lock (int *) ;
 int panic (char*,TYPE_1__*) ;

void
lck_spin_lock(lck_spin_t *lock)
{




 hw_lock_lock(&lock->hwlock);
}
