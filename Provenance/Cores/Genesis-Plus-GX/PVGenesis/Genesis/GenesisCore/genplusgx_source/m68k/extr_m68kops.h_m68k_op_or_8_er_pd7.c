
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
 int MASK_OUT_ABOVE_8 (int) ;
 int NFLAG_8 (int ) ;
 int OPER_A7_PD_8 () ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_or_8_er_pd7(void)
{
  uint res = MASK_OUT_ABOVE_8((DX |= OPER_A7_PD_8()));

  FLAG_N = NFLAG_8(res);
  FLAG_Z = res;
  FLAG_C = CFLAG_CLEAR;
  FLAG_V = VFLAG_CLEAR;
}
