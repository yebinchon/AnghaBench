
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DX ;
 int EA_AY_DI_8 () ;
 int FLAG_Z ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

void m68k_op_bclr_8_r_di(void)
{
 uint ea = EA_AY_DI_8();
 uint src = m68ki_read_8(ea);
 uint mask = 1 << (DX & 7);

 FLAG_Z = src & mask;
 m68ki_write_8(ea, src & ~mask);
}
