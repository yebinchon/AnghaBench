
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_4__ {int cpu_signals; int cpu_prior_signals; } ;
struct TYPE_3__ {int lcpu; } ;


 int DBGLOG (int ,int,int ) ;
 int FALSE ;
 int MP_AST ;
 int MP_CALL ;
 int MP_CALL_PM ;
 int MP_KDP ;
 int MP_TLB_FLUSH ;
 int PM_SAFE_FL_NORMAL ;
 int PM_SAFE_FL_SAFE ;
 int SCHED_STATS_IPI (int ) ;
 int TRUE ;
 int ast_check (int ) ;
 TYPE_2__** cpu_data_ptr ;
 int cpu_handle ;
 int cpu_number () ;
 int cpu_to_processor (int) ;
 TYPE_1__* current_cpu_datap () ;
 int current_processor () ;
 scalar_t__ i_bit (int ,int volatile*) ;
 int i_bit_clear (int ,int volatile*) ;
 int kdp_snapshot ;
 int mp_call_PM () ;
 int mp_cpus_call_action () ;
 int mp_kdp_wait (int ,int ) ;
 int pmSafeMode (int *,int ) ;
 int pmap_update_interrupt () ;
 scalar_t__ pmsafe_debug ;
 int sync_iss_to_iks (int *) ;

int
cpu_signal_handler(x86_saved_state_t *regs)
{

#pragma unused (regs)

 int my_cpu;
 volatile int *my_word;

 SCHED_STATS_IPI(current_processor());

 my_cpu = cpu_number();
 my_word = &cpu_data_ptr[my_cpu]->cpu_signals;





 cpu_data_ptr[my_cpu]->cpu_prior_signals = *my_word;

 do {
  if (i_bit(MP_TLB_FLUSH, my_word)) {
   DBGLOG(cpu_handle,my_cpu,MP_TLB_FLUSH);
   i_bit_clear(MP_TLB_FLUSH, my_word);
   pmap_update_interrupt();
  } else if (i_bit(MP_CALL, my_word)) {
   DBGLOG(cpu_handle,my_cpu,MP_CALL);
   i_bit_clear(MP_CALL, my_word);
   mp_cpus_call_action();
  } else if (i_bit(MP_CALL_PM, my_word)) {
   DBGLOG(cpu_handle,my_cpu,MP_CALL_PM);
   i_bit_clear(MP_CALL_PM, my_word);
   mp_call_PM();
  }
  if (regs == ((void*)0)) {

   break;
  } else if (i_bit(MP_AST, my_word)) {
   DBGLOG(cpu_handle,my_cpu,MP_AST);
   i_bit_clear(MP_AST, my_word);
   ast_check(cpu_to_processor(my_cpu));
  }
 } while (*my_word);

 return 0;
}
