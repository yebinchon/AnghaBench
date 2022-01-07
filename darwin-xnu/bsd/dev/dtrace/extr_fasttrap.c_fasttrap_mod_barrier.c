
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {int cpuc_pid_lock; } ;


 unsigned int NCPU ;
 TYPE_1__* cpu_core ;
 scalar_t__ fasttrap_mod_gen ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
fasttrap_mod_barrier(uint64_t gen)
{
 unsigned int i;

 if (gen < fasttrap_mod_gen)
  return;

 fasttrap_mod_gen++;

 for (i = 0; i < NCPU; i++) {
  lck_mtx_lock(&cpu_core[i].cpuc_pid_lock);
  lck_mtx_unlock(&cpu_core[i].cpuc_pid_lock);
 }
}
