
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CYC_SHIFT ;
 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 void* MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int ROR_17 (int,int) ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;

void m68k_op_roxr_16_r(void)
{
 uint* r_dst = &DY;
 uint orig_shift = DX & 0x3f;

 if(orig_shift != 0)
 {
  uint shift = orig_shift % 17;
  uint src = MASK_OUT_ABOVE_16(*r_dst);
  uint res = ROR_17(src | (XFLAG_AS_1() << 16), shift);

  USE_CYCLES(orig_shift<<CYC_SHIFT);

  FLAG_C = FLAG_X = res >> 8;
  res = MASK_OUT_ABOVE_16(res);

  *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
  FLAG_N = NFLAG_16(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  return;
 }

 FLAG_C = FLAG_X;
 FLAG_N = NFLAG_16(*r_dst);
 FLAG_Z = MASK_OUT_ABOVE_16(*r_dst);
 FLAG_V = VFLAG_CLEAR;
}
