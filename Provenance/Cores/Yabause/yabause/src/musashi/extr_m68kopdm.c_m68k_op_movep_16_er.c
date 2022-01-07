
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int EA_AY_DI_16 () ;
 int MASK_OUT_BELOW_16 (int) ;
 int m68ki_read_8 (int) ;

void m68k_op_movep_16_er(void)
{
 uint ea = EA_AY_DI_16();
 uint* r_dst = &DX;

 *r_dst = MASK_OUT_BELOW_16(*r_dst) | ((m68ki_read_8(ea) << 8) + m68ki_read_8(ea + 2));
}
