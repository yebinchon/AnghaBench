
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ICR ;
 int LAPIC_MSR (int ) ;
 int wrmsr (int ,int ,int ) ;

__attribute__((used)) static void
x2apic_write_icr(uint32_t dst, uint32_t cmd)
{
   wrmsr(LAPIC_MSR(ICR), cmd, dst);
}
