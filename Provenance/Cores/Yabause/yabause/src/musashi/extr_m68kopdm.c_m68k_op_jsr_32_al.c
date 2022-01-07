
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AL_32 () ;
 int REG_PC ;
 int m68ki_jump (int ) ;
 int m68ki_push_32 (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_jsr_32_al(void)
{
 uint ea = EA_AL_32();
 m68ki_trace_t0();
 m68ki_push_32(REG_PC);
 m68ki_jump(ea);
}
