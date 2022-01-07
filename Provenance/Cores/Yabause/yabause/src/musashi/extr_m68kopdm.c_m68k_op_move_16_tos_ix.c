
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ FLAG_S ;
 int OPER_AY_IX_16 () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_set_sr (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_move_16_tos_ix(void)
{
 if(FLAG_S)
 {
  uint new_sr = OPER_AY_IX_16();
  m68ki_trace_t0();
  m68ki_set_sr(new_sr);
  return;
 }
 m68ki_exception_privilege_violation();
}
