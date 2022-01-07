
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_INT_LEVEL ;
 int m68ki_check_interrupts () ;
 int m68ki_exception_interrupt (int) ;

void m68k_set_irq(unsigned int int_level)
{
 uint old_level = CPU_INT_LEVEL;
 CPU_INT_LEVEL = int_level << 8;



 if(old_level != 0x0700 && CPU_INT_LEVEL == 0x0700)
  m68ki_exception_interrupt(7);
 else
  m68ki_check_interrupts();
}
