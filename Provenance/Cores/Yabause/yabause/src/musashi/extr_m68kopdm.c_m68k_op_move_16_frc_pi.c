
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 int EA_AY_PI_16 () ;
 int m68ki_exception_illegal () ;
 int m68ki_get_ccr () ;
 int m68ki_write_16 (int ,int ) ;

void m68k_op_move_16_frc_pi(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  m68ki_write_16(EA_AY_PI_16(), m68ki_get_ccr());
  return;
 }
 m68ki_exception_illegal();
}
