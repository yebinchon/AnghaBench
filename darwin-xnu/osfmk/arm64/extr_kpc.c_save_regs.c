
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FALSE ;
 int KPC_ARM64_PMC_COUNT ;
 int SREG_PMCR0 ;
 int SREG_PMESR0 ;
 int SREG_PMESR1 ;
 int SREG_READ (int ) ;
 int assert (int) ;
 int cpu_number () ;
 int kpc_get_rawpmu_config (int ) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int read_counter (int) ;
 int** saved_PMCR ;
 int** saved_PMESR ;
 int * saved_RAWPMU ;
 int ** saved_counter ;

__attribute__((used)) static void
save_regs(void)
{
 int cpuid = cpu_number();

 __asm__ volatile("dmb ish");

 assert(ml_get_interrupts_enabled() == FALSE);


 saved_PMCR[cpuid][0] = SREG_READ(SREG_PMCR0) | 0x3;


 saved_PMESR[cpuid][0] = SREG_READ(SREG_PMESR0);
 saved_PMESR[cpuid][1] = SREG_READ(SREG_PMESR1);

 kpc_get_rawpmu_config(saved_RAWPMU[cpuid]);





 for (int i = 2; i < KPC_ARM64_PMC_COUNT; i++) {
  saved_counter[cpuid][i] = read_counter(i);
 }
}
