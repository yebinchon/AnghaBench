
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_16 (scalar_t__) ;
 scalar_t__ EA_AY_AI_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (scalar_t__) ;
 int NFLAG_16 (scalar_t__) ;
 scalar_t__ OPER_I_16 () ;
 int VFLAG_ADD_16 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ m68ki_read_16 (scalar_t__) ;
 int m68ki_write_16 (scalar_t__,int ) ;

__attribute__((used)) static void m68k_op_addi_16_ai(void)
{
  uint src = OPER_I_16();
  uint ea = EA_AY_AI_16();
  uint dst = m68ki_read_16(ea);
  uint res = src + dst;

  FLAG_N = NFLAG_16(res);
  FLAG_V = VFLAG_ADD_16(src, dst, res);
  FLAG_X = FLAG_C = CFLAG_16(res);
  FLAG_Z = MASK_OUT_ABOVE_16(res);

  m68ki_write_16(ea, FLAG_Z);
}
