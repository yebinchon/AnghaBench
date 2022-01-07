
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 scalar_t__ MAKE_INT_16 (int ) ;
 scalar_t__ MASK_OUT_ABOVE_32 (scalar_t__) ;
 int OPER_I_16 () ;
 scalar_t__* REG_A ;
 int m68ki_exception_illegal () ;
 int m68ki_jump (int ) ;
 int m68ki_pull_32 () ;
 int m68ki_trace_t0 () ;

void m68k_op_rtd_32(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  uint new_pc = m68ki_pull_32();

  m68ki_trace_t0();
  REG_A[7] = MASK_OUT_ABOVE_32(REG_A[7] + MAKE_INT_16(OPER_I_16()));
  m68ki_jump(new_pc);
  return;
 }
 m68ki_exception_illegal();
}
