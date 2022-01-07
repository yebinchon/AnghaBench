
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AY_PI_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int ) ;
 int NFLAG_16 (int) ;
 int ROL_16 (int,int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_16 (int) ;
 int m68ki_write_16 (int,int) ;

void m68k_op_rol_16_pi(void)
{
 uint ea = EA_AY_PI_16();
 uint src = m68ki_read_16(ea);
 uint res = MASK_OUT_ABOVE_16(ROL_16(src, 1));

 m68ki_write_16(ea, res);

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_C = src >> 7;
 FLAG_V = VFLAG_CLEAR;
}
