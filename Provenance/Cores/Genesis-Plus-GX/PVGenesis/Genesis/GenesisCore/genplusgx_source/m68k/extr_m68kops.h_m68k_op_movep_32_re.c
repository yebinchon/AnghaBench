
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int EA_AY_DI_32 () ;
 int MASK_OUT_ABOVE_8 (int) ;
 int m68ki_write_8 (int,int ) ;

__attribute__((used)) static void m68k_op_movep_32_re(void)
{
  uint ea = EA_AY_DI_32();
  uint src = DX;

  m68ki_write_8(ea, MASK_OUT_ABOVE_8(src >> 24));
  m68ki_write_8(ea += 2, MASK_OUT_ABOVE_8(src >> 16));
  m68ki_write_8(ea += 2, MASK_OUT_ABOVE_8(src >> 8));
  m68ki_write_8(ea += 2, MASK_OUT_ABOVE_8(src));
}
