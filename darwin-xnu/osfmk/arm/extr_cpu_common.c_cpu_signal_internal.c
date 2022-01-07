
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_5__ {int cpu_signal; unsigned int failed_signal; int cpu_id; int failed_signal_count; void* cpu_xcall_p1; void* cpu_xcall_p0; void* failed_xcall; } ;
typedef TYPE_1__ cpu_data_t ;
typedef scalar_t__ boolean_t ;
typedef scalar_t__ Boolean ;


 int DSB_ISH ;
 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ OSCompareAndSwap (int,int,int*) ;
 int OSIncrementAtomicLong (int *) ;
 int PE_cpu_signal (int ,int ) ;
 int PE_cpu_signal_deferred (int ,int ) ;
 int SIGPdisabled ;
 unsigned int SIGPnop ;
 unsigned int SIGPxcall ;
 int __builtin_arm_dsb (int ) ;
 int assert (int) ;
 int cpu_handle_xcall (TYPE_1__*) ;
 TYPE_1__* getCpuDatap () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;

__attribute__((used)) static kern_return_t
cpu_signal_internal(cpu_data_t *target_proc,
      unsigned int signal,
      void *p0,
      void *p1,
      boolean_t defer)
{
 unsigned int Check_SIGPdisabled;
 int current_signals;
 Boolean swap_success;
 boolean_t interruptible = ml_set_interrupts_enabled(FALSE);
 cpu_data_t *current_proc = getCpuDatap();


 if (defer) {
  assert(signal == SIGPnop);
 }

 if (current_proc != target_proc)
  Check_SIGPdisabled = SIGPdisabled;
 else
  Check_SIGPdisabled = 0;

 if (signal == SIGPxcall) {
  do {
   current_signals = target_proc->cpu_signal;
   if ((current_signals & SIGPdisabled) == SIGPdisabled) {





    ml_set_interrupts_enabled(interruptible);
    return KERN_FAILURE;
   }
   swap_success = OSCompareAndSwap(current_signals & (~SIGPxcall), current_signals | SIGPxcall,
     &target_proc->cpu_signal);




   if (!swap_success && (current_proc->cpu_signal & SIGPxcall))
    cpu_handle_xcall(current_proc);

  } while (!swap_success);

  target_proc->cpu_xcall_p0 = p0;
  target_proc->cpu_xcall_p1 = p1;
 } else {
  do {
   current_signals = target_proc->cpu_signal;
   if ((Check_SIGPdisabled !=0 ) && (current_signals & Check_SIGPdisabled) == SIGPdisabled) {




    ml_set_interrupts_enabled(interruptible);
    return KERN_FAILURE;
   }

   swap_success = OSCompareAndSwap(current_signals, current_signals | signal,
     &target_proc->cpu_signal);
  } while (!swap_success);
 }







 __builtin_arm_dsb(DSB_ISH);

 if (!(target_proc->cpu_signal & SIGPdisabled)) {
  if (defer) {
   PE_cpu_signal_deferred(getCpuDatap()->cpu_id, target_proc->cpu_id);
  } else {
   PE_cpu_signal(getCpuDatap()->cpu_id, target_proc->cpu_id);
  }
 }

 ml_set_interrupts_enabled(interruptible);
 return (KERN_SUCCESS);
}
