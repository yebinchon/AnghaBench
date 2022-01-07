
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CFLAG_CLEAR ;
 int DY ;
 int EA_AX_AI_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MASK_OUT_ABOVE_8 (int ) ;
 int NFLAG_8 (int ) ;
 int VFLAG_CLEAR ;
 int m68ki_write_8 (int ,int ) ;

__attribute__((used)) static void m68k_op_move_8_ai_d(void)
{
  uint res = MASK_OUT_ABOVE_8(DY);
  uint ea = EA_AX_AI_8();

  FLAG_N = NFLAG_8(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  m68ki_write_8(ea, res);
}
