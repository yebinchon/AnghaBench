
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EA_AY_DI_32 () ;
 scalar_t__ REG_PC ;
 scalar_t__ REG_PPC ;
 int USE_ALL_CYCLES () ;
 int m68ki_jump (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_jmp_32_di(void)
{
 m68ki_jump(EA_AY_DI_32());
 m68ki_trace_t0();
 if(REG_PC == REG_PPC)
  USE_ALL_CYCLES();
}
