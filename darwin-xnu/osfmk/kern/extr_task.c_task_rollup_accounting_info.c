
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef size_t sfi_class_id_t ;
struct TYPE_6__ {int energy_billed_to_others; int energy_billed_to_me; int logical_writes; int physical_writes; int cpu_time_billed_to_others; int cpu_time_billed_to_me; int * sfi_wait_times; int interrupt_wakeups; int platform_idle_wakeups; int cpu_time; } ;
struct TYPE_5__ {int ledger; int task_energy; int task_metadata_writes; int task_invalidated_writes; int task_deferred_writes; int task_immediate_writes; int task_gpu_ns; int task_timer_wakeups_bin_2; int task_timer_wakeups_bin_1; int cpu_time_rqos_stats; int cpu_time_eqos_stats; int * task_io_stats; int low_mem_privileged_listener; int purged_memory_critical; int purged_memory_warn; int low_mem_notified_critical; int low_mem_notified_warn; int extmod_statistics; int ps_switch; int p_switch; int c_switch; int syscalls_unix; int syscalls_mach; int messages_received; int messages_sent; int cow_faults; int pageins; int faults; int total_runnable_time; int total_ptime; int total_system_time; int total_user_time; } ;


 size_t MAX_SFI_CLASS_ID ;
 size_t SFI_CLASS_UNSPECIFIED ;
 int assert (int) ;
 int ledger_rollup_entry (int ,int ,int ) ;
 TYPE_4__ task_ledgers ;

void
task_rollup_accounting_info(task_t to_task, task_t from_task)
{
 assert(from_task != to_task);

 to_task->total_user_time = from_task->total_user_time;
 to_task->total_system_time = from_task->total_system_time;
 to_task->total_ptime = from_task->total_ptime;
 to_task->total_runnable_time = from_task->total_runnable_time;
 to_task->faults = from_task->faults;
 to_task->pageins = from_task->pageins;
 to_task->cow_faults = from_task->cow_faults;
 to_task->messages_sent = from_task->messages_sent;
 to_task->messages_received = from_task->messages_received;
 to_task->syscalls_mach = from_task->syscalls_mach;
 to_task->syscalls_unix = from_task->syscalls_unix;
 to_task->c_switch = from_task->c_switch;
 to_task->p_switch = from_task->p_switch;
 to_task->ps_switch = from_task->ps_switch;
 to_task->extmod_statistics = from_task->extmod_statistics;
 to_task->low_mem_notified_warn = from_task->low_mem_notified_warn;
 to_task->low_mem_notified_critical = from_task->low_mem_notified_critical;
 to_task->purged_memory_warn = from_task->purged_memory_warn;
 to_task->purged_memory_critical = from_task->purged_memory_critical;
 to_task->low_mem_privileged_listener = from_task->low_mem_privileged_listener;
 *to_task->task_io_stats = *from_task->task_io_stats;
 to_task->cpu_time_eqos_stats = from_task->cpu_time_eqos_stats;
 to_task->cpu_time_rqos_stats = from_task->cpu_time_rqos_stats;
 to_task->task_timer_wakeups_bin_1 = from_task->task_timer_wakeups_bin_1;
 to_task->task_timer_wakeups_bin_2 = from_task->task_timer_wakeups_bin_2;
 to_task->task_gpu_ns = from_task->task_gpu_ns;
 to_task->task_immediate_writes = from_task->task_immediate_writes;
 to_task->task_deferred_writes = from_task->task_deferred_writes;
 to_task->task_invalidated_writes = from_task->task_invalidated_writes;
 to_task->task_metadata_writes = from_task->task_metadata_writes;
 to_task->task_energy = from_task->task_energy;


 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.cpu_time);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.platform_idle_wakeups);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.interrupt_wakeups);





 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.cpu_time_billed_to_me);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.cpu_time_billed_to_others);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.physical_writes);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.logical_writes);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.energy_billed_to_me);
 ledger_rollup_entry(to_task->ledger, from_task->ledger, task_ledgers.energy_billed_to_others);
}
