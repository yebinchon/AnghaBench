
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CYC_SHIFT ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int REG_IR ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_lsl_32_s(void)
{
  uint* r_dst = &DY;
  uint shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint src = *r_dst;
  uint res = MASK_OUT_ABOVE_32(src << shift);

  if(shift != 0)
    USE_CYCLES(shift * CYC_SHIFT);

  *r_dst = res;

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_X = FLAG_C = src >> (24-shift);
  FLAG_V = VFLAG_CLEAR;
}
