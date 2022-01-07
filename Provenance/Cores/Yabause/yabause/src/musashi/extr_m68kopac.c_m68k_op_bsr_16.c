
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int OPER_I_16 () ;
 int REG_PC ;
 int m68ki_branch_16 (int ) ;
 int m68ki_push_32 (int) ;
 int m68ki_trace_t0 () ;

void m68k_op_bsr_16(void)
{
 uint offset = OPER_I_16();
 m68ki_trace_t0();
 m68ki_push_32(REG_PC);
 REG_PC -= 2;
 m68ki_branch_16(offset);
}
