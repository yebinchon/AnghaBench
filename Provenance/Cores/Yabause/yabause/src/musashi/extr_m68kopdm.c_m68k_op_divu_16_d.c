
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int DY ;
 int EXCEPTION_ZERO_DIVIDE ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_16 (int) ;
 int VFLAG_CLEAR ;
 int VFLAG_SET ;
 int m68ki_exception_trap (int ) ;

void m68k_op_divu_16_d(void)
{
 uint* r_dst = &DX;
 uint src = MASK_OUT_ABOVE_16(DY);

 if(src != 0)
 {
  uint quotient = *r_dst / src;
  uint remainder = *r_dst % src;

  if(quotient < 0x10000)
  {
   FLAG_Z = quotient;
   FLAG_N = NFLAG_16(quotient);
   FLAG_V = VFLAG_CLEAR;
   FLAG_C = CFLAG_CLEAR;
   *r_dst = MASK_OUT_ABOVE_32(MASK_OUT_ABOVE_16(quotient) | (remainder << 16));
   return;
  }
  FLAG_V = VFLAG_SET;
  return;
 }
 m68ki_exception_trap(EXCEPTION_ZERO_DIVIDE);
}
