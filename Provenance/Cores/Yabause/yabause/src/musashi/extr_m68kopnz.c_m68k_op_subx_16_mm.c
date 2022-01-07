
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_16 (scalar_t__) ;
 scalar_t__ EA_AX_PD_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 scalar_t__ FLAG_Z ;
 scalar_t__ MASK_OUT_ABOVE_16 (scalar_t__) ;
 int NFLAG_16 (scalar_t__) ;
 scalar_t__ OPER_AY_PD_16 () ;
 int VFLAG_SUB_16 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ XFLAG_AS_1 () ;
 scalar_t__ m68ki_read_16 (scalar_t__) ;
 int m68ki_write_16 (scalar_t__,scalar_t__) ;

void m68k_op_subx_16_mm(void)
{
 uint src = OPER_AY_PD_16();
 uint ea = EA_AX_PD_16();
 uint dst = m68ki_read_16(ea);
 uint res = dst - src - XFLAG_AS_1();

 FLAG_N = NFLAG_16(res);
 FLAG_X = FLAG_C = CFLAG_16(res);
 FLAG_V = VFLAG_SUB_16(src, dst, res);

 res = MASK_OUT_ABOVE_16(res);
 FLAG_Z |= res;

 m68ki_write_16(ea, res);
}
