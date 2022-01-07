
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int PMCR0_PMC_DISABLE_MASK (int) ;
 int PMCR0_PMC_ENABLE_MASK (int) ;
 int SREG_PMCR0 ;
 int SREG_READ (int ) ;
 int SREG_WRITE (int ,int) ;
 int cpu_number () ;
 int** saved_PMCR ;

__attribute__((used)) static boolean_t
disable_counter(uint32_t counter)
{
 uint64_t pmcr0;
 boolean_t enabled;
 int cpuid = cpu_number();

 if (counter < 2) {
  return 1;
 }

 pmcr0 = SREG_READ(SREG_PMCR0) | 0x3;
 enabled = (pmcr0 & PMCR0_PMC_ENABLE_MASK(counter)) != 0;

 if (enabled) {
  pmcr0 &= PMCR0_PMC_DISABLE_MASK(counter);
  SREG_WRITE(SREG_PMCR0, pmcr0);
 }

 saved_PMCR[cpuid][0] = pmcr0;
 return enabled;
}
