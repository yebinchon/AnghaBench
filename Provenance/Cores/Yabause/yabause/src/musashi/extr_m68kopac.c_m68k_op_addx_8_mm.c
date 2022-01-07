
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 int CFLAG_8 (scalar_t__) ;
 scalar_t__ EA_AX_PD_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 scalar_t__ FLAG_Z ;
 scalar_t__ MASK_OUT_ABOVE_8 (scalar_t__) ;
 int NFLAG_8 (scalar_t__) ;
 scalar_t__ OPER_AY_PD_8 () ;
 int VFLAG_ADD_8 (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ XFLAG_AS_1 () ;
 scalar_t__ m68ki_read_8 (scalar_t__) ;
 int m68ki_write_8 (scalar_t__,scalar_t__) ;

void m68k_op_addx_8_mm(void)
{
 uint src = OPER_AY_PD_8();
 uint ea = EA_AX_PD_8();
 uint dst = m68ki_read_8(ea);
 uint res = src + dst + XFLAG_AS_1();

 FLAG_N = NFLAG_8(res);
 FLAG_V = VFLAG_ADD_8(src, dst, res);
 FLAG_X = FLAG_C = CFLAG_8(res);

 res = MASK_OUT_ABOVE_8(res);
 FLAG_Z |= res;

 m68ki_write_8(ea, res);
}
