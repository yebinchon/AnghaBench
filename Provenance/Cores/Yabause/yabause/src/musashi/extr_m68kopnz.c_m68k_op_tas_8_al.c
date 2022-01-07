
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AL_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_8 (int) ;
 int VFLAG_CLEAR ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

void m68k_op_tas_8_al(void)
{
 uint ea = EA_AL_8();
 uint dst = m68ki_read_8(ea);

 FLAG_Z = dst;
 FLAG_N = NFLAG_8(dst);
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
 m68ki_write_8(ea, dst | 0x80);
}
