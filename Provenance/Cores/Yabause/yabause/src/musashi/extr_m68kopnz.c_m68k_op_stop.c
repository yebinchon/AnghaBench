
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_STOPPED ;
 scalar_t__ FLAG_S ;
 int OPER_I_16 () ;
 int STOP_LEVEL_STOP ;
 int m68ki_exception_privilege_violation () ;
 scalar_t__ m68ki_remaining_cycles ;
 int m68ki_set_sr (int ) ;
 int m68ki_trace_t0 () ;

void m68k_op_stop(void)
{
 if(FLAG_S)
 {
  uint new_sr = OPER_I_16();
  m68ki_trace_t0();
  CPU_STOPPED |= STOP_LEVEL_STOP;
  m68ki_set_sr(new_sr);
  m68ki_remaining_cycles = 0;
  return;
 }
 m68ki_exception_privilege_violation();
}
