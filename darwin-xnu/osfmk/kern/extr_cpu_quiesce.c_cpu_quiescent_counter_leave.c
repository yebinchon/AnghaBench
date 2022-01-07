
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* processor_t ;
typedef int checkin_mask_t ;
struct TYPE_3__ {int cpu_id; scalar_t__ cpu_quiesce_state; int cpu_quiesce_last_checkin; } ;


 int AST_UNQUIESCE ;
 scalar_t__ CPU_QUIESCE_COUNTER_JOINED ;
 void* CPU_QUIESCE_COUNTER_LEFT ;
 scalar_t__ CPU_QUIESCE_COUNTER_PENDING_JOIN ;
 int acq_rel ;
 int assert (int) ;
 int ast_off (int ) ;
 int cpu_checked_in_bit (int) ;
 int cpu_expected_bit (int) ;
 int cpu_quiescent_counter_commit (int ) ;
 scalar_t__ cpu_quiescent_counter_needs_commit (int) ;
 int cpu_quiescing_checkin_state ;
 TYPE_1__* current_processor () ;
 int os_atomic_and_orig (int *,int,int ) ;

void
cpu_quiescent_counter_leave(uint64_t ctime)
{
 processor_t processor = current_processor();
 int cpuid = processor->cpu_id;

 assert(processor->cpu_quiesce_state == CPU_QUIESCE_COUNTER_JOINED ||
        processor->cpu_quiesce_state == CPU_QUIESCE_COUNTER_PENDING_JOIN);


 ast_off(AST_UNQUIESCE);

 if (processor->cpu_quiesce_state == CPU_QUIESCE_COUNTER_PENDING_JOIN) {

  processor->cpu_quiesce_state = CPU_QUIESCE_COUNTER_LEFT;
  return;
 }


 processor->cpu_quiesce_last_checkin = ctime;

 checkin_mask_t mask = cpu_checked_in_bit(cpuid) | cpu_expected_bit(cpuid);

 checkin_mask_t orig_state = os_atomic_and_orig(&cpu_quiescing_checkin_state,
                                                ~mask, acq_rel);

 assert((orig_state & cpu_expected_bit(cpuid)));

 processor->cpu_quiesce_state = CPU_QUIESCE_COUNTER_LEFT;

 if (cpu_quiescent_counter_needs_commit(orig_state)) {






  return;
 }

 checkin_mask_t new_state = orig_state & ~mask;

 if (cpu_quiescent_counter_needs_commit(new_state)) {
  cpu_quiescent_counter_commit(ctime);
 }
}
