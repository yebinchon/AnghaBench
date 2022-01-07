
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_INSTR_MODE ;
 int CPU_RUN_MODE ;
 scalar_t__ FLAG_S ;
 int INSTRUCTION_YES ;
 int RUN_MODE_NORMAL ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_jump (int ) ;
 int m68ki_pull_16 () ;
 int m68ki_pull_32 () ;
 int m68ki_set_sr (int ) ;

__attribute__((used)) static void m68k_op_rte_32(void)
{
  if(FLAG_S)
  {
    uint new_sr;
    uint new_pc;

    new_sr = m68ki_pull_16();
    new_pc = m68ki_pull_32();
    m68ki_jump(new_pc);
    m68ki_set_sr(new_sr);






    return;
  }
  m68ki_exception_privilege_violation();
}
