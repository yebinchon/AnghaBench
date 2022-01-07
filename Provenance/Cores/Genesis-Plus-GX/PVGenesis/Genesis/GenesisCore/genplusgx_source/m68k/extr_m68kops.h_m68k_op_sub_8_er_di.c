
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_8 (int) ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 void* MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int OPER_AY_DI_8 () ;
 int VFLAG_SUB_8 (int,int,int) ;

__attribute__((used)) static void m68k_op_sub_8_er_di(void)
{
  uint* r_dst = &DX;
  uint src = OPER_AY_DI_8();
  uint dst = MASK_OUT_ABOVE_8(*r_dst);
  uint res = dst - src;

  FLAG_N = NFLAG_8(res);
  FLAG_X = FLAG_C = CFLAG_8(res);
  FLAG_V = VFLAG_SUB_8(src, dst, res);
  FLAG_Z = MASK_OUT_ABOVE_8(res);

  *r_dst = MASK_OUT_BELOW_8(*r_dst) | FLAG_Z;
}
