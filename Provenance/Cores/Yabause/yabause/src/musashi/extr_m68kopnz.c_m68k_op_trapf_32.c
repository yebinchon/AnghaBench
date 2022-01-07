
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int REG_PC ;
 int m68ki_exception_illegal () ;

void m68k_op_trapf_32(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  REG_PC += 4;
  return;
 }
 m68ki_exception_illegal();
}
