
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MASK_OUT_ABOVE_8 (int ) ;
 int REG_IR ;
 int REG_PC ;
 int m68ki_branch_8 (int ) ;
 int m68ki_push_32 (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_bsr_8(void)
{
 m68ki_trace_t0();
 m68ki_push_32(REG_PC);
 m68ki_branch_8(MASK_OUT_ABOVE_8(REG_IR));
}
