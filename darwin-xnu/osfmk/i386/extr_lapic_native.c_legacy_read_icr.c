
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ICR ;
 int ICRD ;
 scalar_t__* LAPIC_MMIO (int ) ;

__attribute__((used)) static uint64_t
legacy_read_icr(void)
{
 return (((uint64_t)*LAPIC_MMIO(ICRD)) << 32) | ((uint64_t)*LAPIC_MMIO(ICR));
}
