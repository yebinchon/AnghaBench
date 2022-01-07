
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ FLAG_S ;
 int OPER_I_16 () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_get_sr () ;
 int m68ki_set_sr (int) ;
 int m68ki_trace_t0 () ;

void m68k_op_ori_16_tos(void)
{
 if(FLAG_S)
 {
  uint src = OPER_I_16();
  m68ki_trace_t0();
  m68ki_set_sr(m68ki_get_sr() | src);
  return;
 }
 m68ki_exception_privilege_violation();
}
