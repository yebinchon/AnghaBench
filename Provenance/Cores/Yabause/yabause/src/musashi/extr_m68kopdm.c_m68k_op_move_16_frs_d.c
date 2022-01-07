
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_000 (int ) ;
 int DY ;
 scalar_t__ FLAG_S ;
 int MASK_OUT_BELOW_16 (int) ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_get_sr () ;

void m68k_op_move_16_frs_d(void)
{
 if(CPU_TYPE_IS_000(CPU_TYPE) || FLAG_S)
 {
  DY = MASK_OUT_BELOW_16(DY) | m68ki_get_sr();
  return;
 }
 m68ki_exception_privilege_violation();
}
