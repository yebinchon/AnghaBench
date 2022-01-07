
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* cpu_tlb_invalid; } ;
struct TYPE_3__ {void* cpu_tlb_invalid; } ;


 void* FALSE ;
 TYPE_2__* cpu_datap (int) ;
 int cpu_number () ;
 TYPE_1__* current_cpu_datap () ;
 int flush_tlb_raw () ;
 scalar_t__ get_preemption_level () ;
 int mfence () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int pmap_assert (int) ;
 scalar_t__ pmap_pcid_ncpus ;
 int pmap_pcid_validate_current () ;
 int tlb_flush_global () ;

void
process_pmap_updates(void)
{
 int ccpu = cpu_number();
 pmap_assert(ml_get_interrupts_enabled() == 0 || get_preemption_level() != 0);
 if (pmap_pcid_ncpus) {
  pmap_pcid_validate_current();
  cpu_datap(ccpu)->cpu_tlb_invalid = FALSE;
  tlb_flush_global();
 } else {
  current_cpu_datap()->cpu_tlb_invalid = FALSE;
  flush_tlb_raw();
 }

 mfence();
}
