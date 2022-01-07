
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ COND_NOT_HI () ;
 int CYC_DBCC_F_EXP ;
 int CYC_DBCC_F_NOEXP ;
 int DY ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_BELOW_16 (int) ;
 int OPER_I_16 () ;
 int REG_PC ;
 int USE_CYCLES (int ) ;
 int m68ki_branch_16 (int) ;
 int m68ki_trace_t0 () ;

void m68k_op_dbhi_16(void)
{
 if(COND_NOT_HI())
 {
  uint* r_dst = &DY;
  uint res = MASK_OUT_ABOVE_16(*r_dst - 1);

  *r_dst = MASK_OUT_BELOW_16(*r_dst) | res;
  if(res != 0xffff)
  {
   uint offset = OPER_I_16();
   REG_PC -= 2;
   m68ki_trace_t0();
   m68ki_branch_16(offset);
   USE_CYCLES(CYC_DBCC_F_NOEXP);
   return;
  }
  REG_PC += 2;
  USE_CYCLES(CYC_DBCC_F_EXP);
  return;
 }
 REG_PC += 2;
}
