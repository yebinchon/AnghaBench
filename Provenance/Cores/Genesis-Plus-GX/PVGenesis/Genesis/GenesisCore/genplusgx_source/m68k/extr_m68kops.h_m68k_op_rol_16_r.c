
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
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int NFLAG_16 (int) ;
 int ROL_16 (int,int) ;
 int USE_CYCLES (int) ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_rol_16_r(void)
{
  uint* r_dst = &DY;
  uint orig_shift = DX & 0x3f;
  uint shift = orig_shift & 15;
  uint src = MASK_OUT_ABOVE_16(*r_dst);
  uint res = MASK_OUT_ABOVE_16(ROL_16(src, shift));

  if(orig_shift != 0)
  {
    USE_CYCLES(orig_shift * CYC_SHIFT);

    if(shift != 0)
    {
      *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
      FLAG_C = (src << shift) >> 8;
      FLAG_N = NFLAG_16(res);
      FLAG_Z = res;
      FLAG_V = VFLAG_CLEAR;
      return;
    }
    FLAG_C = (src & 1)<<8;
    FLAG_N = NFLAG_16(src);
    FLAG_Z = src;
    FLAG_V = VFLAG_CLEAR;
    return;
  }

  FLAG_C = CFLAG_CLEAR;
  FLAG_N = NFLAG_16(src);
  FLAG_Z = src;
  FLAG_V = VFLAG_CLEAR;
}
