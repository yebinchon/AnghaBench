
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int EA_AW_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_16 (int ) ;
 int OPER_PCIX_16 () ;
 int VFLAG_CLEAR ;
 int m68ki_write_16 (int ,int ) ;

void m68k_op_move_16_aw_pcix(void)
{
 uint res = OPER_PCIX_16();
 uint ea = EA_AW_16();

 m68ki_write_16(ea, res);

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
