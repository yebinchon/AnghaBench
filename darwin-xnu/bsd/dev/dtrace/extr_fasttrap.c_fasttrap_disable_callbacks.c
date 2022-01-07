
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_ft_lock; struct TYPE_3__* cpu_next; } ;
typedef TYPE_1__ dtrace_cpu_t ;


 int ASSERT (int) ;
 TYPE_1__* CPU ;
 int * dtrace_pid_probe_ptr ;
 int * dtrace_return_probe_ptr ;
 int fasttrap_count_mtx ;
 scalar_t__ fasttrap_pid_count ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_unlock_exclusive (int *) ;

__attribute__((used)) static void
fasttrap_disable_callbacks(void)
{


 lck_mtx_lock(&fasttrap_count_mtx);
 ASSERT(fasttrap_pid_count > 0);
 fasttrap_pid_count--;
 if (fasttrap_pid_count == 0) {
  dtrace_cpu_t *cur, *cpu = CPU;
  for (cur = cpu->cpu_next; cur != cpu; cur = cur->cpu_next) {
   lck_rw_lock_exclusive(&cur->cpu_ft_lock);

  }

  dtrace_pid_probe_ptr = ((void*)0);
  dtrace_return_probe_ptr = ((void*)0);

  for (cur = cpu->cpu_next; cur != cpu; cur = cur->cpu_next) {
   lck_rw_unlock_exclusive(&cur->cpu_ft_lock);

  }
 }
 lck_mtx_unlock(&fasttrap_count_mtx);
}
