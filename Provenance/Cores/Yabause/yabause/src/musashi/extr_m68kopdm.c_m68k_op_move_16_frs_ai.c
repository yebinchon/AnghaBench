
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_000 (int ) ;
 int EA_AY_AI_16 () ;
 scalar_t__ FLAG_S ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_get_sr () ;
 int m68ki_write_16 (int ,int ) ;

void m68k_op_move_16_frs_ai(void)
{
 if(CPU_TYPE_IS_000(CPU_TYPE) || FLAG_S)
 {
  uint ea = EA_AY_AI_16();
  m68ki_write_16(ea, m68ki_get_sr());
  return;
 }
 m68ki_exception_privilege_violation();
}
