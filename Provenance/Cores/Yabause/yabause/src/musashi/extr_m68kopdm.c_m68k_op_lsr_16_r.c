
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int CYC_SHIFT ;
 int DX ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int NFLAG_CLEAR ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;
 int XFLAG_CLEAR ;
 int ZFLAG_SET ;

void m68k_op_lsr_16_r(void)
{
 uint* r_dst = &DY;
 uint shift = DX & 0x3f;
 uint src = MASK_OUT_ABOVE_16(*r_dst);
 uint res = src >> shift;

 if(shift != 0)
 {
  USE_CYCLES(shift<<CYC_SHIFT);

  if(shift <= 16)
  {
   *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
   FLAG_C = FLAG_X = (src >> (shift - 1))<<8;
   FLAG_N = NFLAG_CLEAR;
   FLAG_Z = res;
   FLAG_V = VFLAG_CLEAR;
   return;
  }

  *r_dst &= 0xffff0000;
  FLAG_X = XFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
  FLAG_N = NFLAG_CLEAR;
  FLAG_Z = ZFLAG_SET;
  FLAG_V = VFLAG_CLEAR;
  return;
 }

 FLAG_C = CFLAG_CLEAR;
 FLAG_N = NFLAG_16(src);
 FLAG_Z = src;
 FLAG_V = VFLAG_CLEAR;
}
