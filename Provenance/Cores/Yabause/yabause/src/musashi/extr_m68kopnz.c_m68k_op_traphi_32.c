
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_HI () ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EXCEPTION_TRAPV ;
 int REG_PC ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_trap (int ) ;

void m68k_op_traphi_32(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  if(COND_HI())
  {
   m68ki_exception_trap(EXCEPTION_TRAPV);
   return;
  }
  REG_PC += 4;
  return;
 }
 m68ki_exception_illegal();
}
