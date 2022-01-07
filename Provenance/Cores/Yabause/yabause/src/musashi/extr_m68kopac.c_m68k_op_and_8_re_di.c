
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int EA_AY_DI_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int ) ;

void m68k_op_and_8_re_di(void)
{
 uint ea = EA_AY_DI_8();
 uint res = DX & m68ki_read_8(ea);

 FLAG_N = NFLAG_8(res);
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
 FLAG_Z = MASK_OUT_ABOVE_8(res);

 m68ki_write_8(ea, FLAG_Z);
}
