
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_OUT_ABOVE_8 (int ) ;
 int REG_IR ;
 scalar_t__ REG_PC ;
 scalar_t__ REG_PPC ;
 int USE_ALL_CYCLES () ;
 int m68ki_branch_8 (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_bra_8(void)
{
 m68ki_trace_t0();
 m68ki_branch_8(MASK_OUT_ABOVE_8(REG_IR));
 if(REG_PC == REG_PPC)
  USE_ALL_CYCLES();
}
