
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* processor_t ;
typedef int checkin_mask_t ;
struct TYPE_3__ {int cpu_id; scalar_t__ cpu_quiesce_state; scalar_t__ cpu_quiesce_last_checkin; } ;


 scalar_t__ CPU_QUIESCE_COUNTER_JOINED ;
 scalar_t__ CPU_QUIESCE_COUNTER_NONE ;
 scalar_t__ __probable (int) ;
 int acq_rel ;
 int assert (int) ;
 int assertf (int,char*,int,int) ;
 int cpu_checked_in_bit (int) ;
 scalar_t__ cpu_checkin_min_interval ;
 int cpu_expected_bit (int) ;
 int cpu_quiescent_counter_commit (scalar_t__) ;
 scalar_t__ cpu_quiescent_counter_needs_commit (int) ;
 int cpu_quiescing_checkin_state ;
 TYPE_1__* current_processor () ;
 int os_atomic_load (int *,int ) ;
 int os_atomic_or_orig (int *,int,int ) ;
 int relaxed ;

void
cpu_quiescent_counter_checkin(uint64_t ctime)
{
 processor_t processor = current_processor();
 int cpuid = processor->cpu_id;

 assert(processor->cpu_quiesce_state != CPU_QUIESCE_COUNTER_NONE);


 if (__probable(processor->cpu_quiesce_state != CPU_QUIESCE_COUNTER_JOINED))
  return;


 if (__probable((ctime - processor->cpu_quiesce_last_checkin) <= cpu_checkin_min_interval))
  return;

 processor->cpu_quiesce_last_checkin = ctime;

 checkin_mask_t state = os_atomic_load(&cpu_quiescing_checkin_state, relaxed);

 assert((state & cpu_expected_bit(cpuid)));

 if (__probable((state & cpu_checked_in_bit(cpuid)))) {




  return;
 }

 checkin_mask_t orig_state = os_atomic_or_orig(&cpu_quiescing_checkin_state,
                                               cpu_checked_in_bit(cpuid), acq_rel);

 checkin_mask_t new_state = orig_state | cpu_checked_in_bit(cpuid);

 if (cpu_quiescent_counter_needs_commit(new_state)) {
  assertf(!cpu_quiescent_counter_needs_commit(orig_state),
          "old: 0x%lx, new: 0x%lx", orig_state, new_state);
  cpu_quiescent_counter_commit(ctime);
 }
}
