
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CFLAG_CLEAR ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int) ;
 int OPER_I_32 () ;
 int VFLAG_CLEAR ;

void m68k_op_andi_32_d(void)
{
 FLAG_Z = DY &= (OPER_I_32());

 FLAG_N = NFLAG_32(FLAG_Z);
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
