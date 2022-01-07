
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_COND_AL ;
 int A_COND_EQ ;
 int A_COND_MI ;
 int A_COND_NE ;
 int A_COND_PL ;
 int EL_ANOMALY ;
 int EOP_TST_IMM (int,int ,int) ;
 int KRREG_ST ;
 int dirty_regb ;
 int elprintf (int ,char*) ;
 int tr_unhandled () ;

__attribute__((used)) static int tr_cond_check(int op)
{
 int f = (op & 0x100) >> 8;
 switch (op&0xf0) {
  case 0x00: return A_COND_AL;
  case 0x50:
   if (dirty_regb & KRREG_ST) return f ? A_COND_EQ : A_COND_NE;
   EOP_TST_IMM(6, 0, 4);
   return f ? A_COND_NE : A_COND_EQ;
  case 0x70:
   if (dirty_regb & KRREG_ST) return f ? A_COND_MI : A_COND_PL;
   EOP_TST_IMM(6, 0, 8);
   return f ? A_COND_NE : A_COND_EQ;
  default:
   elprintf(EL_ANOMALY, "unimplemented cond?\n");
   tr_unhandled();
   return 0;
 }
}
