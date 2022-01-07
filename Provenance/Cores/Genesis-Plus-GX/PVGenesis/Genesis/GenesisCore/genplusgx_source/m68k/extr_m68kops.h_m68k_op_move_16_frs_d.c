
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DY ;
 int MASK_OUT_BELOW_16 (int) ;
 int m68ki_get_sr () ;

__attribute__((used)) static void m68k_op_move_16_frs_d(void)
{
  DY = MASK_OUT_BELOW_16(DY) | m68ki_get_sr();
}
