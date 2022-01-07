
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int EA_A7_PD_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int ) ;
 int VFLAG_CLEAR ;
 int m68ki_read_8 (int ) ;
 int m68ki_write_8 (int ,int ) ;

void m68k_op_eor_8_pd7(void)
{
 uint ea = EA_A7_PD_8();
 uint res = MASK_OUT_ABOVE_8(DX ^ m68ki_read_8(ea));

 m68ki_write_8(ea, res);

 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
