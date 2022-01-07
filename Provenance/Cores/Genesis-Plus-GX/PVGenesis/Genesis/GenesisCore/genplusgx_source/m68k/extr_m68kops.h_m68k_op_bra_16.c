
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int OPER_I_16 () ;
 int REG_PC ;
 int m68ki_branch_16 (int ) ;

__attribute__((used)) static void m68k_op_bra_16(void)
{
  uint offset = OPER_I_16();
  REG_PC -= 2;
  m68ki_branch_16(offset);
}
