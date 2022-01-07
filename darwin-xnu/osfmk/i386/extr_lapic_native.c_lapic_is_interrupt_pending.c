
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int FALSE ;
 int IRR_BASE ;
 int ISR_BASE ;
 scalar_t__ LAPIC_READ_OFFSET (int ,int) ;
 int TRUE ;

boolean_t
lapic_is_interrupt_pending(void)
{
 int i;

 for (i = 0; i < 8; i += 1) {
  if ((LAPIC_READ_OFFSET(IRR_BASE, i) != 0) ||
      (LAPIC_READ_OFFSET(ISR_BASE, i) != 0))
   return (TRUE);
 }

 return (FALSE);
}
