
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lapic_register_t ;


 int LAPIC_MSR (int ) ;
 int rdmsr (int ,int ,int ) ;

__attribute__((used)) static uint32_t
x2apic_read(lapic_register_t reg)
{
 uint32_t lo;
 uint32_t hi;

 rdmsr(LAPIC_MSR(reg), lo, hi);
 return lo;
}
