
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ICR ;
 int ICRD ;
 int LAPIC_ICRD_DEST_SHIFT ;
 int* LAPIC_MMIO (int ) ;

__attribute__((used)) static void
legacy_write_icr(uint32_t dst, uint32_t cmd)
{
 *LAPIC_MMIO(ICRD) = dst << LAPIC_ICRD_DEST_SHIFT;
 *LAPIC_MMIO(ICR) = cmd;
}
