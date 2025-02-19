
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int OPER_I_32 () ;
 scalar_t__ REG_PC ;
 scalar_t__ REG_PPC ;
 int USE_ALL_CYCLES () ;
 int m68ki_branch_32 (int ) ;
 int m68ki_exception_illegal () ;
 int m68ki_trace_t0 () ;

void m68k_op_bra_32(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint offset = OPER_I_32();
  REG_PC -= 4;
  m68ki_trace_t0();
  m68ki_branch_32(offset);
  if(REG_PC == REG_PPC)
   USE_ALL_CYCLES();
  return;
 }
 m68ki_exception_illegal();
}
