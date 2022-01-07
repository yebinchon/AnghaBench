
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int boolean_t ;


 int CPUID_FEATURE_APIC ;
 int FALSE ;
 int LAPIC_REDUCED_INTERRUPT_BASE ;
 int LAPIC_START ;
 int MSR_IA32_APIC_BASE ;
 int MSR_IA32_APIC_BASE_BASE ;
 int MSR_IA32_APIC_BASE_ENABLE ;
 int TRUE ;
 int cpuid_family () ;
 int cpuid_features () ;
 int cpuid_set_info () ;
 int lapic_interrupt_base ;
 int lapic_os_enabled ;
 int printf (char*) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

boolean_t
lapic_probe(void)
{
 uint32_t lo;
 uint32_t hi;

 if (cpuid_features() & CPUID_FEATURE_APIC)
  return TRUE;

 if (cpuid_family() == 6 || cpuid_family() == 15) {





  rdmsr(MSR_IA32_APIC_BASE, lo, hi);
  lo &= ~MSR_IA32_APIC_BASE_BASE;
  lo |= MSR_IA32_APIC_BASE_ENABLE | LAPIC_START;
  lo |= MSR_IA32_APIC_BASE_ENABLE;
  wrmsr(MSR_IA32_APIC_BASE, lo, hi);




  cpuid_set_info();




  if (cpuid_features() & CPUID_FEATURE_APIC) {
   printf("Local APIC discovered and enabled\n");
   lapic_os_enabled = TRUE;
   lapic_interrupt_base = LAPIC_REDUCED_INTERRUPT_BASE;
   return TRUE;
  }
 }

 return FALSE;
}
