
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int boolean_t ;


 int CACHE_CONTROL_PAT ;
 int CPUID_FEATURE_PAT ;
 int DBG (char*,int ,int) ;
 int FALSE ;
 int MSR_IA32_CR_PAT ;
 int cpuid_features () ;
 int get_cpu_number () ;
 int ml_set_interrupts_enabled (int ) ;
 int mtrr_update_action (int ) ;
 int rdmsr64 (int ) ;

void
pat_init(void)
{
 boolean_t istate;
 uint64_t pat;

 if (!(cpuid_features() & CPUID_FEATURE_PAT))
  return;

 istate = ml_set_interrupts_enabled(FALSE);

 pat = rdmsr64(MSR_IA32_CR_PAT);
 DBG("CPU%d PAT: was 0x%016llx\n", get_cpu_number(), pat);


 if ((pat & ~(0x0FULL << 48)) != (0x01ULL << 48)) {
  mtrr_update_action(CACHE_CONTROL_PAT);
 }
 ml_set_interrupts_enabled(istate);
}
