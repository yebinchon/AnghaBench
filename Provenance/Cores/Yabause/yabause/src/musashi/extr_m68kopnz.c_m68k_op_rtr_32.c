
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m68ki_jump (int ) ;
 int m68ki_pull_16 () ;
 int m68ki_pull_32 () ;
 int m68ki_set_ccr (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_rtr_32(void)
{
 m68ki_trace_t0();
 m68ki_set_ccr(m68ki_pull_16());
 m68ki_jump(m68ki_pull_32());
}
