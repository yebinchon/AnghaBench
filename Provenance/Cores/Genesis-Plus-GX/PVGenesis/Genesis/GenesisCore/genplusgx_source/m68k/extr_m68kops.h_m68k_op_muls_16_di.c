
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int sint ;


 int CFLAG_CLEAR ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MAKE_INT_16 (int ) ;
 int MASK_OUT_ABOVE_16 (int ) ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int ) ;
 int OPER_AY_DI_16 () ;
 int UseMulsCycles (int) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_muls_16_di(void)
{
  uint* r_dst = &DX;
  sint src = MAKE_INT_16(OPER_AY_DI_16());
  uint res = MASK_OUT_ABOVE_32( src * MAKE_INT_16(MASK_OUT_ABOVE_16(*r_dst)));

  UseMulsCycles(src);

  *r_dst = res;

  FLAG_Z = res;
  FLAG_N = NFLAG_32(res);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
}
