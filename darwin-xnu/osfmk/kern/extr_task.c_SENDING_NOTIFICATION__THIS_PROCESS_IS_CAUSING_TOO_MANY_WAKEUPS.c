
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
struct ledger_entry_info {int lei_balance; int lei_last_refill; int lei_limit; int lei_refill_period; } ;
typedef scalar_t__ mach_exception_data_type_t ;
typedef int kern_return_t ;
typedef int boolean_t ;
struct TYPE_8__ {int interrupt_wakeups; } ;
struct TYPE_7__ {int rusage_cpu_flags; int ledger; int * bsd_info; } ;


 int EXCEPTION_CODE_MAX ;
 int EXC_RESOURCE ;
 int EXC_RESOURCE_CPUMONITOR_ENCODE_OBSERVATION_INTERVAL (scalar_t__,int) ;
 int EXC_RESOURCE_CPUMONITOR_ENCODE_WAKEUPS_OBSERVED (scalar_t__,int) ;
 int EXC_RESOURCE_CPUMONITOR_ENCODE_WAKEUPS_PERMITTED (scalar_t__,int) ;
 int EXC_RESOURCE_ENCODE_FLAVOR (scalar_t__,int ) ;
 int EXC_RESOURCE_ENCODE_TYPE (scalar_t__,int ) ;
 int FLAVOR_WAKEUPS_MONITOR ;
 int NSEC_PER_SEC ;
 int OS_LOG_DEFAULT ;
 int RESOURCE_TYPE_WAKEUPS ;
 int RMON_CPUWAKES_VIOLATED ;
 int TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON ;
 int WAKEMON_DISABLE ;
 scalar_t__ audio_active ;
 TYPE_1__* current_task () ;
 scalar_t__ disable_exc_resource ;
 int exception_triage (int ,scalar_t__*,int) ;
 int kRNFatalLimitFlag ;
 int ledger_get_entry_info (int ,int ,struct ledger_entry_info*) ;
 int os_log (int ,char*,char const*,int,...) ;
 int printf (char*,...) ;
 char* proc_name_address (int *) ;
 int proc_selfpid () ;
 int send_cpu_wakes_violation ;
 int send_resource_violation (int ,TYPE_1__*,struct ledger_entry_info*,int ) ;
 TYPE_4__ task_ledgers ;
 int task_terminate_internal (TYPE_1__*) ;
 int task_wakeups_monitor_ctl (TYPE_1__*,int *,int *) ;
 int trace_resource_violation (int ,struct ledger_entry_info*) ;

void __attribute__((noinline))
SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MANY_WAKEUPS(void)
{
 task_t task = current_task();
 int pid = 0;
 const char *procname = "unknown";
 boolean_t fatal;
 kern_return_t kr;



 struct ledger_entry_info lei;







 ledger_get_entry_info(task->ledger, task_ledgers.interrupt_wakeups, &lei);






 uint32_t flags = WAKEMON_DISABLE;
 task_wakeups_monitor_ctl(task, &flags, ((void*)0));

 fatal = task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON;
 trace_resource_violation(RMON_CPUWAKES_VIOLATED, &lei);
 os_log(OS_LOG_DEFAULT, "process %s[%d] caught waking the CPU %llu times "
        "over ~%llu seconds, averaging %llu wakes / second and "
        "violating a %slimit of %llu wakes over %llu seconds.\n",
        procname, pid,
        lei.lei_balance, lei.lei_last_refill / NSEC_PER_SEC,
     lei.lei_last_refill == 0 ? 0 :
    (NSEC_PER_SEC * lei.lei_balance / lei.lei_last_refill),
        fatal ? "FATAL " : "",
     lei.lei_limit, lei.lei_refill_period / NSEC_PER_SEC);

 kr = send_resource_violation(send_cpu_wakes_violation, task, &lei,
                              fatal ? kRNFatalLimitFlag : 0);
 if (kr) {
  printf("send_resource_violation(CPU wakes, ...): error %#x\n", kr);
 }
 if (fatal) {
  task_terminate_internal(task);
 }
}
