
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ FALSE ;
 int LAPIC_LVT_MASKED ;
 int LAPIC_READ (int ) ;
 int LAPIC_SVR_ENABLE ;
 int LAPIC_WRITE (int ,int) ;
 int LVT_ERROR ;
 int LVT_LINT0 ;
 int LVT_PERFCNT ;
 int LVT_TIMER ;
 int MSR_IA32_APIC_BASE ;
 int MSR_IA32_APIC_BASE_ENABLE ;
 int SVR ;
 int cpuid_set_info () ;
 scalar_t__ get_cpu_number () ;
 scalar_t__ lapic_os_enabled ;
 scalar_t__ master_cpu ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

void
lapic_shutdown(void)
{
 uint32_t lo;
 uint32_t hi;
 uint32_t value;


 if (lapic_os_enabled == FALSE)
  return;

 mp_disable_preemption();


 if (get_cpu_number() == master_cpu) {
  value = LAPIC_READ(LVT_LINT0);
  value |= LAPIC_LVT_MASKED;
  LAPIC_WRITE(LVT_LINT0, value);
 }


 LAPIC_WRITE(LVT_ERROR, LAPIC_READ(LVT_ERROR) | LAPIC_LVT_MASKED);


 LAPIC_WRITE(LVT_TIMER, LAPIC_READ(LVT_TIMER) | LAPIC_LVT_MASKED);


 LAPIC_WRITE(LVT_PERFCNT, LAPIC_READ(LVT_PERFCNT) | LAPIC_LVT_MASKED);


 LAPIC_WRITE(SVR, LAPIC_READ(SVR) & ~LAPIC_SVR_ENABLE);


 rdmsr(MSR_IA32_APIC_BASE, lo, hi);
 lo &= ~MSR_IA32_APIC_BASE_ENABLE;
 wrmsr(MSR_IA32_APIC_BASE, lo, hi);
 cpuid_set_info();

 mp_enable_preemption();
}
