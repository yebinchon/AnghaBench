
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 int DY ;
 int MASK_OUT_BELOW_16 (int) ;
 int m68ki_exception_illegal () ;
 int m68ki_get_ccr () ;

void m68k_op_move_16_frc_d(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  DY = MASK_OUT_BELOW_16(DY) | m68ki_get_ccr();
  return;
 }
 m68ki_exception_illegal();
}
