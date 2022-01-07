
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int thread_t ;
typedef int task_t ;


 scalar_t__ PBT_TIMEOUT_CYCLES ;
 int TRUE ;
 int cpu_number () ;
 int current_task () ;
 int current_thread () ;
 int hw_atomic_add (scalar_t__*,int) ;
 int hw_atomic_sub (scalar_t__*,int) ;
 int hw_lock_to (int *,unsigned int) ;
 int hw_lock_unlock (int *) ;
 int panic_display_system_configuration (int ) ;
 scalar_t__ pbtcnt ;
 int pbtcpu ;
 int pbtlock ;
 int print_tasks_user_threads (int ) ;
 int print_thread_num_that_crashed (int ) ;
 int print_threads_registers (int ) ;
 int print_uuid_info (int ) ;
 scalar_t__ rdtsc64 () ;

void print_launchd_info(void)
{
 task_t task = current_task();
 thread_t thread = current_thread();
 volatile uint32_t *ppbtcnt = &pbtcnt;
 uint64_t bt_tsc_timeout;
 int cn = cpu_number();

 if(pbtcpu != cn) {
  hw_atomic_add(&pbtcnt, 1);



  hw_lock_to(&pbtlock, ~0U);
  pbtcpu = cn;
 }

 print_uuid_info(task);
 print_thread_num_that_crashed(task);
 print_threads_registers(thread);
 print_tasks_user_threads(task);

 panic_display_system_configuration(TRUE);




 hw_lock_unlock(&pbtlock);
 hw_atomic_sub(&pbtcnt, 1);



 bt_tsc_timeout = rdtsc64() + PBT_TIMEOUT_CYCLES;
 while(*ppbtcnt && (rdtsc64() < bt_tsc_timeout));

}
