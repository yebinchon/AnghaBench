
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_CS () ;
 int CYC_BCC_NOTAKE_B ;
 int MASK_OUT_ABOVE_8 (int ) ;
 int REG_IR ;
 int USE_CYCLES (int ) ;
 int m68ki_branch_8 (int ) ;

__attribute__((used)) static void m68k_op_bcs_32(void)
{
  if(COND_CS())
  {
    m68ki_branch_8(MASK_OUT_ABOVE_8(REG_IR));
    return;
  }
  USE_CYCLES(CYC_BCC_NOTAKE_B);
}
