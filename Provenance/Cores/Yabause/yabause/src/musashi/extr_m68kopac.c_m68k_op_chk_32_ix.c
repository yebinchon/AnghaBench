
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sint ;


 int CFLAG_CLEAR ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int DX ;
 int EXCEPTION_CHK ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 scalar_t__ MAKE_INT_32 (int ) ;
 int OPER_AY_IX_32 () ;
 int VFLAG_CLEAR ;
 int ZFLAG_32 (scalar_t__) ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_trap (int ) ;

void m68k_op_chk_32_ix(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  sint src = MAKE_INT_32(DX);
  sint bound = MAKE_INT_32(OPER_AY_IX_32());

  FLAG_Z = ZFLAG_32(src);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  if(src >= 0 && src <= bound)
  {
   return;
  }
  FLAG_N = (src < 0)<<7;
  m68ki_exception_trap(EXCEPTION_CHK);
  return;
 }
 m68ki_exception_illegal();
}
