
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;


 int LCK_RW_INTERLOCK ;
 int cpu_pause () ;
 int ordered_load (int *) ;

__attribute__((used)) static inline void
lck_rw_interlock_spin(lck_rw_t *lock)
{
 while (ordered_load(&lock->data) & LCK_RW_INTERLOCK) {
  cpu_pause();
 }
}
