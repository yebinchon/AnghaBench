
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AY_PD_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_X ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int) ;
 int NFLAG_16 (int) ;
 int ROR_17 (int,int) ;
 int VFLAG_CLEAR ;
 int XFLAG_AS_1 () ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

void m68k_op_roxr_16_pd(void)
{
 uint ea = EA_AY_PD_16();
 uint src = m68ki_read_16(ea);
 uint res = ROR_17(src | (XFLAG_AS_1() << 16), 1);

 FLAG_C = FLAG_X = res >> 8;
 res = MASK_OUT_ABOVE_16(res);

 m68ki_write_16(ea, res);

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
}
