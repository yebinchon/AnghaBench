
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DX ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_BELOW_8 (int) ;
 int NFLAG_8 (int) ;
 int OPER_PCIX_8 () ;
 int VFLAG_CLEAR ;

void m68k_op_move_8_d_pcix(void)
{
 uint res = OPER_PCIX_8();
 uint* r_dst = &DX;

 *r_dst = MASK_OUT_BELOW_8(*r_dst) | res;

 FLAG_N = NFLAG_8(res);
 FLAG_Z = res;
 FLAG_V = VFLAG_CLEAR;
 FLAG_C = CFLAG_CLEAR;
}
