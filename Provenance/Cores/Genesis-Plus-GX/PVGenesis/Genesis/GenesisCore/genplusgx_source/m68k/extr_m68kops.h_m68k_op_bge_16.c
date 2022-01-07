
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ COND_GE () ;
 int CYC_BCC_NOTAKE_W ;
 int OPER_I_16 () ;
 int REG_PC ;
 int USE_CYCLES (int ) ;
 int m68ki_branch_16 (int ) ;

__attribute__((used)) static void m68k_op_bge_16(void)
{
  if(COND_GE())
  {
    uint offset = OPER_I_16();
    REG_PC -= 2;
    m68ki_branch_16(offset);
    return;
  }
  REG_PC += 2;
  USE_CYCLES(CYC_BCC_NOTAKE_W);
}
