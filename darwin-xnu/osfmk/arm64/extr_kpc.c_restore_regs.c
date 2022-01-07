
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KPC_ARM64_PMC_COUNT ;
 int SREG_PMCR0 ;
 int SREG_PMCR1 ;
 int SREG_PMESR0 ;
 int SREG_PMESR1 ;
 int SREG_WRITE (int ,int) ;
 int cpu_number () ;
 int kpc_set_rawpmu_config (int ) ;
 int** saved_PMCR ;
 int** saved_PMESR ;
 int * saved_RAWPMU ;
 int ** saved_counter ;
 int write_counter (int,int ) ;

__attribute__((used)) static void
restore_regs(void)
{
 int cpuid = cpu_number();


 SREG_WRITE(SREG_PMESR0, saved_PMESR[cpuid][0]);
 SREG_WRITE(SREG_PMESR1, saved_PMESR[cpuid][1]);

 kpc_set_rawpmu_config(saved_RAWPMU[cpuid]);


 for (int i = 2; i < KPC_ARM64_PMC_COUNT; i++) {
  write_counter(i, saved_counter[cpuid][i]);
 }


 SREG_WRITE(SREG_PMCR1, saved_PMCR[cpuid][1] | 0x30303);
 SREG_WRITE(SREG_PMCR0, saved_PMCR[cpuid][0] | 0x3);
}
