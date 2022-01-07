
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AX_DI_32 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int ) ;
 int OPER_PCDI_32 () ;
 int VFLAG_CLEAR ;
 int m68ki_write_32 (int ,int ) ;

void m68k_op_move_32_di_pcdi(void)
{
 uint res = OPER_PCDI_32();
 uint ea = EA_AX_DI_32();

 m68ki_write_32(ea, res);

 FLAG_N = NFLAG_32(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
