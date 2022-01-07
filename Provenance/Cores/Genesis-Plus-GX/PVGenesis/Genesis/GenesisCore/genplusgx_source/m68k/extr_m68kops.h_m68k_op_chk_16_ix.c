
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sint ;


 int CFLAG_CLEAR ;
 int DX ;
 int EXCEPTION_CHK ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 scalar_t__ MAKE_INT_16 (int ) ;
 int OPER_AY_IX_16 () ;
 int VFLAG_CLEAR ;
 int ZFLAG_16 (scalar_t__) ;
 int m68ki_exception_trap (int ) ;

__attribute__((used)) static void m68k_op_chk_16_ix(void)
{
  sint src = MAKE_INT_16(DX);
  sint bound = MAKE_INT_16(OPER_AY_IX_16());

  FLAG_Z = ZFLAG_16(src);
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  if(src >= 0 && src <= bound)
  {
    return;
  }
  FLAG_N = (src < 0)<<7;
  m68ki_exception_trap(EXCEPTION_CHK);
}
