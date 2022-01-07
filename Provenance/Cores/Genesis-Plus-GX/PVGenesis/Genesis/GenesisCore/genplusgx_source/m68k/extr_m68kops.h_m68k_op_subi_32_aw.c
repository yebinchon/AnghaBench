
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ EA_AW_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_32 (scalar_t__) ;
 int NFLAG_32 (scalar_t__) ;
 scalar_t__ OPER_I_32 () ;
 int VFLAG_SUB_32 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ m68ki_read_32 (scalar_t__) ;
 int m68ki_write_32 (scalar_t__,int ) ;

__attribute__((used)) static void m68k_op_subi_32_aw(void)
{
  uint src = OPER_I_32();
  uint ea = EA_AW_32();
  uint dst = m68ki_read_32(ea);
  uint res = dst - src;

  FLAG_N = NFLAG_32(res);
  FLAG_Z = MASK_OUT_ABOVE_32(res);
  FLAG_X = FLAG_C = CFLAG_SUB_32(src, dst, res);
  FLAG_V = VFLAG_SUB_32(src, dst, res);

  m68ki_write_32(ea, FLAG_Z);
}
