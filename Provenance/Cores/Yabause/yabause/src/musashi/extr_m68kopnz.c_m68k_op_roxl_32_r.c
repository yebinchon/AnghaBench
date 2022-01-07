
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint ;


 int CYC_SHIFT ;
 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int ROL_33 (int,int) ;
 int ROL_33_64 (int,int) ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;

void m68k_op_roxl_32_r(void)
{
 uint* r_dst = &DY;
 uint orig_shift = DX & 0x3f;
 uint shift = orig_shift % 33;
 uint src = *r_dst;
 uint res = MASK_OUT_ABOVE_32((ROL_33(src, shift) & ~(1 << (shift - 1))) | (XFLAG_AS_1() << (shift - 1)));
 uint new_x_flag = src & (1 << (32 - shift));

 if(orig_shift != 0)
  USE_CYCLES(orig_shift<<CYC_SHIFT);

 if(shift != 0)
 {
  *r_dst = res;
  FLAG_X = (new_x_flag != 0)<<8;
 }
 else
  res = src;
 FLAG_C = FLAG_X;
 FLAG_N = NFLAG_32(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;


}
