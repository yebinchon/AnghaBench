
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_IA32_APIC_BASE ;
 int MSR_IA32_APIC_BASE_EXTENDED ;
 int kprintf (char*) ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void
x2apic_init(void)
{
 uint32_t lo;
 uint32_t hi;

 rdmsr(MSR_IA32_APIC_BASE, lo, hi);
 if ((lo & MSR_IA32_APIC_BASE_EXTENDED) == 0) {
  lo |= MSR_IA32_APIC_BASE_EXTENDED;
  wrmsr(MSR_IA32_APIC_BASE, lo, hi);
  kprintf("x2APIC mode enabled\n");
 }
}
