
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ICR ;
 int LAPIC_MSR (int ) ;
 int rdmsr64 (int ) ;

__attribute__((used)) static uint64_t
x2apic_read_icr(void)
{
 return rdmsr64(LAPIC_MSR(ICR));;
}
