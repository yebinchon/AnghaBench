
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
 int MAKE_INT_8 (int ) ;
 int MASK_OUT_ABOVE_8 (int ) ;
 int NFLAG_32 (int ) ;
 int REG_IR ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_moveq_32(void)
{
  uint res = DX = MAKE_INT_8(MASK_OUT_ABOVE_8(REG_IR));

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
}
