
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_8 (scalar_t__) ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (scalar_t__) ;
 int NFLAG_8 (scalar_t__) ;
 scalar_t__ OPER_I_8 () ;
 scalar_t__ OPER_PCDI_8 () ;
 int VFLAG_SUB_8 (scalar_t__,scalar_t__,scalar_t__) ;
 int m68ki_exception_illegal () ;

void m68k_op_cmpi_8_pcdi(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint src = OPER_I_8();
  uint dst = OPER_PCDI_8();
  uint res = dst - src;

  FLAG_N = NFLAG_8(res);
  FLAG_Z = MASK_OUT_ABOVE_8(res);
  FLAG_V = VFLAG_SUB_8(src, dst, res);
  FLAG_C = CFLAG_8(res);
  return;
 }
 m68ki_exception_illegal();
}
