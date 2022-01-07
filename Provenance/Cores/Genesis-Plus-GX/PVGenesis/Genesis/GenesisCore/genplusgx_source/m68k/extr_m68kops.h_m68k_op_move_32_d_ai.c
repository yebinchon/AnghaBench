
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
 int NFLAG_32 (int ) ;
 int OPER_AY_AI_32 () ;
 int VFLAG_CLEAR ;

__attribute__((used)) static void m68k_op_move_32_d_ai(void)
{
  uint res = OPER_AY_AI_32();
  uint* r_dst = &DX;

  *r_dst = res;

  FLAG_N = NFLAG_32(res);
  FLAG_Z = res;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;
}
