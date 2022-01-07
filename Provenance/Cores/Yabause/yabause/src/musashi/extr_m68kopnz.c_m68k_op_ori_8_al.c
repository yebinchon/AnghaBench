
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
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int) ;
 int OPER_I_8 () ;
 int VFLAG_CLEAR ;
 int m68ki_read_8 (int) ;
 int m68ki_write_8 (int,int) ;

void m68k_op_ori_8_al(void)
{
 uint src = OPER_I_8();
 uint ea = EA_AL_8();
 uint res = MASK_OUT_ABOVE_8(src | m68ki_read_8(ea));

 m68ki_write_8(ea, res);

 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 FLAG_C = CFLAG_CLEAR;
 FLAG_V = VFLAG_CLEAR;
}
