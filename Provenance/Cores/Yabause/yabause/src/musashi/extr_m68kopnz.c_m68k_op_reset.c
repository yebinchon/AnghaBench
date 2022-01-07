
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CYC_RESET ;
 scalar_t__ FLAG_S ;
 int USE_CYCLES (int ) ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_output_reset () ;

void m68k_op_reset(void)
{
 if(FLAG_S)
 {
  m68ki_output_reset();
  USE_CYCLES(CYC_RESET);
  return;
 }
 m68ki_exception_privilege_violation();
}
