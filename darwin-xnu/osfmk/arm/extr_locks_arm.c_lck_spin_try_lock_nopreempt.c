
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwlock; } ;
typedef TYPE_1__ lck_spin_t ;


 int hw_lock_try_nopreempt (int *) ;

int
lck_spin_try_lock_nopreempt(lck_spin_t *lock)
{
 return hw_lock_try_nopreempt(&lock->hwlock);
}
