
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_A7_PI_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_8 (int ) ;
 int OPER_A7_PD_8 () ;
 int VFLAG_CLEAR ;
 int m68ki_write_8 (int ,int ) ;

void m68k_op_move_8_pi7_pd7(void)
{
 uint res = OPER_A7_PD_8();
 uint ea = EA_A7_PI_8();

 m68ki_write_8(ea, res);

 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
