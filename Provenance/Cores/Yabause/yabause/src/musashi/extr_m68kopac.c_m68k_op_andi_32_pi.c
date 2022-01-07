
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AY_PI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int) ;
 int OPER_I_32 () ;
 int VFLAG_CLEAR ;
 int m68ki_read_32 (int) ;
 int m68ki_write_32 (int,int) ;

void m68k_op_andi_32_pi(void)
{
 uint src = OPER_I_32();
 uint ea = EA_AY_PI_32();
 uint res = src & m68ki_read_32(ea);

 FLAG_N = NFLAG_32(res);
 FLAG_Z = res;
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;

 m68ki_write_32(ea, res);
}
