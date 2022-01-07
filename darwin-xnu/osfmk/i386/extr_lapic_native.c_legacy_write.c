
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lapic_register_t ;


 int * LAPIC_MMIO (int ) ;

__attribute__((used)) static void
legacy_write(lapic_register_t reg, uint32_t value)
{
 *LAPIC_MMIO(reg) = value;
}
