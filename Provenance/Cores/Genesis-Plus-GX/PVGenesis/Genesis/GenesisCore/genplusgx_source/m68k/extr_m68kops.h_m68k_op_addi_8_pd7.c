
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_8 (scalar_t__) ;
 scalar_t__ EA_A7_PD_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (scalar_t__) ;
 int NFLAG_8 (scalar_t__) ;
 scalar_t__ OPER_I_8 () ;
 int VFLAG_ADD_8 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ m68ki_read_8 (scalar_t__) ;
 int m68ki_write_8 (scalar_t__,int ) ;

__attribute__((used)) static void m68k_op_addi_8_pd7(void)
{
  uint src = OPER_I_8();
  uint ea = EA_A7_PD_8();
  uint dst = m68ki_read_8(ea);
  uint res = src + dst;

  FLAG_N = NFLAG_8(res);
  FLAG_V = VFLAG_ADD_8(src, dst, res);
  FLAG_X = FLAG_C = CFLAG_8(res);
  FLAG_Z = MASK_OUT_ABOVE_8(res);

  m68ki_write_8(ea, FLAG_Z);
}
