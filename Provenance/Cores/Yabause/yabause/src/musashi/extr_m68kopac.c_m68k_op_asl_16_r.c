
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
 int ZFLAG_SET ;
 int* m68ki_shift_16_table ;

void m68k_op_asl_16_r(void)
{
 uint* r_dst = &DY;
 uint shift = DX & 0x3f;
 uint src = MASK_OUT_ABOVE_16(*r_dst);
 uint res = MASK_OUT_ABOVE_16(src << shift);

 if(shift != 0)
 {
  USE_CYCLES(shift<<CYC_SHIFT);

  if(shift < 16)
  {
   *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
   FLAG_X = FLAG_C = (src << shift) >> 8;
   FLAG_N = NFLAG_16(res);
   FLAG_Z = res;
   src &= m68ki_shift_16_table[shift + 1];
   FLAG_V = (!(src == 0 || src == m68ki_shift_16_table[shift + 1]))<<7;
   return;
  }

  *r_dst &= 0xffff0000;
  FLAG_X = FLAG_C = ((shift == 16 ? src & 1 : 0))<<8;
  FLAG_N = NFLAG_CLEAR;
  FLAG_Z = ZFLAG_SET;
  FLAG_V = (!(src == 0))<<7;
  return;
 }

 FLAG_C = CFLAG_CLEAR;
 FLAG_N = NFLAG_16(src);
 FLAG_Z = src;
 FLAG_V = VFLAG_CLEAR;
}
