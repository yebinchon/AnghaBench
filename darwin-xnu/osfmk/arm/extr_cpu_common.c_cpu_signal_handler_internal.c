
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ipi_cnt_wake; int ipi_cnt; } ;
struct TYPE_6__ {int cpu_signal; int cpu_int_state; int cpu_processor; scalar_t__ cpu_number; TYPE_1__ cpu_stat; } ;
typedef TYPE_2__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 int DebuggerXCall (int ) ;
 scalar_t__ FALSE ;
 int LWClean ;
 int LWFlush ;
 int SCHED_STATS_IPI (int ) ;
 unsigned int SIGPLWClean ;
 unsigned int SIGPLWFlush ;
 unsigned int SIGPast ;
 unsigned int SIGPdebug ;
 unsigned int SIGPdec ;
 unsigned int SIGPdisabled ;
 unsigned int SIGPkptimer ;
 unsigned int SIGPxcall ;
 scalar_t__ TRUE ;
 int ast_check (int ) ;
 int cache_xcall_handler (int ) ;
 int cpu_handle_xcall (TYPE_2__*) ;
 int current_processor () ;
 TYPE_2__* getCpuDatap () ;
 int hw_atomic_and (int *,unsigned int) ;
 unsigned int hw_atomic_or (int *,unsigned int) ;
 int kperf_signal_handler (unsigned int) ;
 int rtclock_intr (scalar_t__) ;

void
cpu_signal_handler_internal(boolean_t disable_signal)
{
 cpu_data_t *cpu_data_ptr = getCpuDatap();
 unsigned int cpu_signal;


 cpu_data_ptr->cpu_stat.ipi_cnt++;
 cpu_data_ptr->cpu_stat.ipi_cnt_wake++;

 SCHED_STATS_IPI(current_processor());

 cpu_signal = hw_atomic_or(&cpu_data_ptr->cpu_signal, 0);

 if ((!(cpu_signal & SIGPdisabled)) && (disable_signal == TRUE))
  (void)hw_atomic_or(&cpu_data_ptr->cpu_signal, SIGPdisabled);
 else if ((cpu_signal & SIGPdisabled) && (disable_signal == FALSE))
  (void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPdisabled);

 while (cpu_signal & ~SIGPdisabled) {
  if (cpu_signal & SIGPdec) {
   (void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPdec);
   rtclock_intr(FALSE);
  }






  if (cpu_signal & SIGPxcall) {
   cpu_handle_xcall(cpu_data_ptr);
  }
  if (cpu_signal & SIGPast) {
   (void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPast);
   ast_check(cpu_data_ptr->cpu_processor);
  }
  if (cpu_signal & SIGPdebug) {
   (void)hw_atomic_and(&cpu_data_ptr->cpu_signal, ~SIGPdebug);
   DebuggerXCall(cpu_data_ptr->cpu_int_state);
  }
  cpu_signal = hw_atomic_or(&cpu_data_ptr->cpu_signal, 0);
 }
}
