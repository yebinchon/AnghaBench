
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AY ;
 scalar_t__ FLAG_S ;
 int REG_USP ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_trace_t0 () ;

void m68k_op_move_32_tou(void)
{
 if(FLAG_S)
 {
  m68ki_trace_t0();
  REG_USP = AY;
  return;
 }
 m68ki_exception_privilege_violation();
}
