
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct TYPE_2__ {scalar_t__ cycle_end; } ;


 int CPU_STOPPED ;
 scalar_t__ FLAG_S ;
 int MUL ;
 int OPER_I_16 () ;
 int SET_CYCLES (scalar_t__) ;
 int STOP_LEVEL_STOP ;
 TYPE_1__ m68ki_cpu ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_set_sr (int ) ;

__attribute__((used)) static void m68k_op_stop(void)
{
  if(FLAG_S)
  {
    uint new_sr = OPER_I_16();
    CPU_STOPPED |= STOP_LEVEL_STOP;
    m68ki_set_sr(new_sr);
    SET_CYCLES(m68ki_cpu.cycle_end - 4*MUL);
    return;
  }
  m68ki_exception_privilege_violation();
}
