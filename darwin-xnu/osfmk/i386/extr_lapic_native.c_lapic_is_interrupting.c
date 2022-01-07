
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int IRR_BASE ;
 int ISR_BASE ;
 int LAPIC_READ_OFFSET (int ,int) ;
 int TRUE ;

boolean_t
lapic_is_interrupting(uint8_t vector)
{
 int i;
 int bit;
 uint32_t irr;
 uint32_t isr;

 i = vector / 32;
 bit = 1 << (vector % 32);

 irr = LAPIC_READ_OFFSET(IRR_BASE, i);
 isr = LAPIC_READ_OFFSET(ISR_BASE, i);

 if ((irr | isr) & bit)
  return (TRUE);

 return (FALSE);
}
