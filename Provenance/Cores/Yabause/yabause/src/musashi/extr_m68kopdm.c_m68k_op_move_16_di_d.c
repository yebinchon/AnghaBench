
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DY ;
 int EA_AX_DI_16 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_16 (int ) ;
 int NFLAG_16 (int ) ;
 int VFLAG_CLEAR ;
 int m68ki_write_16 (int ,int ) ;

void m68k_op_move_16_di_d(void)
{
 uint res = MASK_OUT_ABOVE_16(DY);
 uint ea = EA_AX_DI_16();

 m68ki_write_16(ea, res);

 FLAG_N = NFLAG_16(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
