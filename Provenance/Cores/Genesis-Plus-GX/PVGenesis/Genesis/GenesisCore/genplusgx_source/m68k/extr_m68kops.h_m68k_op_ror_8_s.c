
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
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int REG_IR ;
 int ROR_8 (int,int) ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_ror_8_s(void)
{
  uint* r_dst = &DY;
  uint orig_shift = (((REG_IR >> 9) - 1) & 7) + 1;
  uint shift = orig_shift & 7;
  uint src = MASK_OUT_ABOVE_8(*r_dst);
  uint res = ROR_8(src, shift);

  if(orig_shift != 0)
    USE_CYCLES(orig_shift * CYC_SHIFT);

  *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

  FLAG_N = NFLAG_8(res);
  FLAG_Z = res;
  FLAG_C = src << (9-orig_shift);
  FLAG_V = VFLAG_CLEAR;
}
