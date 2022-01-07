
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usimple_lock_t ;
typedef int lck_spin_t ;


 int usimple_unlock (int ) ;

void
lck_spin_unlock(
 lck_spin_t *lck)
{
 usimple_unlock((usimple_lock_t) lck);
}
