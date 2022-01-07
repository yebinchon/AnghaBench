
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ u64; } ;
struct TYPE_8__ {scalar_t__ mca_is_saved; TYPE_2__ mca_mcg_status; int mca_is_valid; } ;
typedef TYPE_1__ mca_state_t ;
typedef TYPE_2__ ia32_mcg_status_t ;
struct TYPE_12__ {TYPE_1__* cpu_mca_state; } ;
struct TYPE_11__ {TYPE_1__* cpu_mca_state; } ;
struct TYPE_10__ {int u64; } ;


 scalar_t__ CLEAR ;
 scalar_t__ DUMPED ;
 scalar_t__ DUMPING ;
 scalar_t__ FALSE ;
 scalar_t__ LockTimeOut ;
 TYPE_7__* cpu_datap (unsigned int) ;
 int cpu_pause () ;
 TYPE_6__* current_cpu_datap () ;
 TYPE_5__ ia32_mcg_cap ;
 scalar_t__ mach_absolute_time () ;
 int mca_cpu_dump_error_banks (TYPE_1__*) ;
 scalar_t__ mca_dump_state ;
 int mca_error_bank_count ;
 int mca_lock ;
 int mca_report_cpu_info () ;
 int mca_save_state (TYPE_1__*) ;
 int paniclog_append_noflush (char*,unsigned int,...) ;
 unsigned int real_ncpus ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

void
mca_dump(void)
{
 mca_state_t *mca_state = current_cpu_datap()->cpu_mca_state;
 uint64_t deadline;
 unsigned int i = 0;




 mca_save_state(mca_state);





 simple_lock(&mca_lock);
 if (mca_dump_state > CLEAR) {
  simple_unlock(&mca_lock);
  while (mca_dump_state == DUMPING)
   cpu_pause();
  return;
 }
 mca_dump_state = DUMPING;
 simple_unlock(&mca_lock);





 deadline = mach_absolute_time() + LockTimeOut;
 while (mach_absolute_time() < deadline && i < real_ncpus) {
  if (!cpu_datap(i)->cpu_mca_state->mca_is_saved) {
   cpu_pause();
   continue;
  }
  i += 1;
 }




 paniclog_append_noflush("Machine-check capabilities: 0x%016qx\n", ia32_mcg_cap.u64);

 mca_report_cpu_info();

 paniclog_append_noflush(" %d error-reporting banks\n", mca_error_bank_count);




 for (i = 0; i < real_ncpus; i++) {
  mca_state_t *mcsp = cpu_datap(i)->cpu_mca_state;
  ia32_mcg_status_t status;

  if (mcsp == ((void*)0) ||
      mcsp->mca_is_saved == FALSE ||
      mcsp->mca_mcg_status.u64 == 0 ||
      !mcsp->mca_is_valid) {
   continue;
  }
  status = mcsp->mca_mcg_status;
  paniclog_append_noflush("Processor %d: IA32_MCG_STATUS: 0x%016qx\n",
   i, status.u64);
  mca_cpu_dump_error_banks(mcsp);
 }


 mca_dump_state = DUMPED;
}
