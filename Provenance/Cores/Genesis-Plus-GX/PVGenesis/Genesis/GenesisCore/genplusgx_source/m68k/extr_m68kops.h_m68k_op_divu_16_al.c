
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int EXCEPTION_ZERO_DIVIDE ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_16 (int) ;
 int NFLAG_SET ;
 int OPER_AL_16 () ;
 int USE_CYCLES (int) ;
 int UseDivuCycles (int,int) ;
 int VFLAG_CLEAR ;
 int VFLAG_SET ;
 int m68ki_exception_trap (int ) ;

__attribute__((used)) static void m68k_op_divu_16_al(void)
{
  uint* r_dst = &DX;
  uint src = OPER_AL_16();

  if(src != 0)
  {
    uint quotient = *r_dst / src;
    uint remainder = *r_dst % src;

    if(quotient < 0x10000)
    {
      UseDivuCycles(*r_dst,src);
      FLAG_Z = quotient;
      FLAG_N = NFLAG_16(quotient);
      FLAG_V = VFLAG_CLEAR;
      FLAG_C = CFLAG_CLEAR;
      *r_dst = MASK_OUT_ABOVE_32(MASK_OUT_ABOVE_16(quotient) | (remainder << 16));
      return;
    }
    USE_CYCLES(7 * 10);
    FLAG_V = VFLAG_SET;
    FLAG_N = NFLAG_SET;
    FLAG_C = CFLAG_CLEAR;
    return;
  }
  FLAG_C = CFLAG_CLEAR;
  m68ki_exception_trap(EXCEPTION_ZERO_DIVIDE);
}
