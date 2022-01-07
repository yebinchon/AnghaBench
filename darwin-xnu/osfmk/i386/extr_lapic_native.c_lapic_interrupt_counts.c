
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int IRR_BASE ;
 int ISR_BASE ;
 int LAPIC_READ_OFFSET (int ,int) ;

void
lapic_interrupt_counts(uint64_t intrs[256])
{
 int i;
 int j;
 int bit;
 uint32_t irr;
 uint32_t isr;

 if (intrs == ((void*)0))
  return;

 for (i = 0; i < 8; i += 1) {
  irr = LAPIC_READ_OFFSET(IRR_BASE, i);
  isr = LAPIC_READ_OFFSET(ISR_BASE, i);

  if ((isr | irr) == 0)
   continue;

  for (j = (i == 0) ? 16 : 0; j < 32; j += 1) {
   bit = (32 * i) + j;
   if ((isr | irr) & (1 << j))
    intrs[bit] += 1;
  }
 }
}
