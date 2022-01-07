
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
struct ledger_entry_info {int lei_balance; int lei_limit; int lei_refill_period; } ;
typedef scalar_t__ mach_exception_data_type_t ;
typedef int kern_return_t ;
struct TYPE_7__ {int logical_writes; int physical_writes; } ;
struct TYPE_6__ {int ledger; } ;


 int EXCEPTION_CODE_MAX ;
 int EXC_RESOURCE ;
 int EXC_RESOURCE_ENCODE_FLAVOR (scalar_t__,int) ;
 int EXC_RESOURCE_ENCODE_TYPE (scalar_t__,int ) ;
 int EXC_RESOURCE_IO_ENCODE_INTERVAL (scalar_t__,int) ;
 int EXC_RESOURCE_IO_ENCODE_LIMIT (scalar_t__,int) ;
 int EXC_RESOURCE_IO_ENCODE_OBSERVED (scalar_t__,int) ;


 int IOMON_DISABLE ;
 int NSEC_PER_SEC ;
 int OS_LOG_DEFAULT ;
 int RESOURCE_TYPE_IO ;
 int RMON_LOGWRITES_VIOLATED ;
 TYPE_1__* current_task () ;
 int exception_triage (int ,scalar_t__*,int) ;
 int kRNFlagsNone ;
 int ledger_get_entry_info (int ,int ,struct ledger_entry_info*) ;
 int os_log (int ,char*,int,int,int,int,int) ;
 int printf (char*,int) ;
 int proc_selfpid () ;
 int send_disk_writes_violation ;
 int send_resource_violation (int ,TYPE_1__*,struct ledger_entry_info*,int ) ;
 int task_io_monitor_ctl (TYPE_1__*,int *) ;
 TYPE_2__ task_ledgers ;
 int trace_resource_violation (int ,struct ledger_entry_info*) ;

void __attribute__((noinline)) SENDING_NOTIFICATION__THIS_PROCESS_IS_CAUSING_TOO_MUCH_IO(int flavor)
{
 int pid = 0;
 task_t task = current_task();



 struct ledger_entry_info lei;
 kern_return_t kr;
 switch(flavor) {
  case 128:
   ledger_get_entry_info(task->ledger, task_ledgers.physical_writes, &lei);
   break;
  case 129:
   ledger_get_entry_info(task->ledger, task_ledgers.logical_writes, &lei);
   break;
 }







 uint32_t flags = IOMON_DISABLE;
 task_io_monitor_ctl(task, &flags);

 if (flavor == 129) {
  trace_resource_violation(RMON_LOGWRITES_VIOLATED, &lei);
 }
 os_log(OS_LOG_DEFAULT, "process [%d] caught causing excessive I/O (flavor: %d). Task I/O: %lld MB. [Limit : %lld MB per %lld secs]\n",
  pid, flavor, (lei.lei_balance / (1024 * 1024)), (lei.lei_limit / (1024 * 1024)), (lei.lei_refill_period / NSEC_PER_SEC));

 kr = send_resource_violation(send_disk_writes_violation, task, &lei, kRNFlagsNone);
 if (kr) {
  printf("send_resource_violation(disk_writes, ...): error %#x\n", kr);
 }
}
