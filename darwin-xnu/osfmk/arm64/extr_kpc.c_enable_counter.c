
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int PMCR0_INTGEN_AIC ;
 int PMCR0_INTGEN_MASK ;
 int PMCR0_PMC_ENABLE_MASK (int ) ;
 int PMCR0_PMI_ENABLE_MASK (int ) ;
 int SREG_PMCR0 ;
 int SREG_READ (int ) ;
 int SREG_WRITE (int ,int) ;
 int cpu_number () ;
 int** saved_PMCR ;

__attribute__((used)) static boolean_t
enable_counter(uint32_t counter)
{
 int cpuid = cpu_number();
 uint64_t pmcr0 = 0, intgen_type;
 boolean_t counter_running, pmi_enabled, intgen_correct, enabled;

 pmcr0 = SREG_READ(SREG_PMCR0) | 0x3 ;

 counter_running = (pmcr0 & PMCR0_PMC_ENABLE_MASK(counter)) != 0;
 pmi_enabled = (pmcr0 & PMCR0_PMI_ENABLE_MASK(counter)) != 0;




 intgen_type = PMCR0_INTGEN_AIC;
 intgen_correct = (pmcr0 & PMCR0_INTGEN_MASK) == intgen_type;

 enabled = counter_running && pmi_enabled && intgen_correct;

 if (!enabled) {
  pmcr0 |= PMCR0_PMC_ENABLE_MASK(counter);
  pmcr0 |= PMCR0_PMI_ENABLE_MASK(counter);
  pmcr0 &= ~PMCR0_INTGEN_MASK;
  pmcr0 |= intgen_type;

  SREG_WRITE(SREG_PMCR0, pmcr0);
 }

 saved_PMCR[cpuid][0] = pmcr0;
 return enabled;
}
