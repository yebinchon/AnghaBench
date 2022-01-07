
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_INSTR_MODE ;
 scalar_t__* CYC_EXCEPTION ;
 scalar_t__* CYC_INSTRUCTION ;
 size_t EXCEPTION_PRIVILEGE_VIOLATION ;
 int INSTRUCTION_NO ;
 size_t REG_IR ;
 scalar_t__ REG_PC ;
 int USE_CYCLES (scalar_t__) ;
 int m68ki_init_exception () ;
 int m68ki_jump_vector (size_t) ;
 int m68ki_stack_frame_3word (scalar_t__,int ) ;

__attribute__((used)) static void m68ki_exception_privilege_violation(void)
{
  uint sr = m68ki_init_exception();


  CPU_INSTR_MODE = INSTRUCTION_NO;


  m68ki_stack_frame_3word(REG_PC-2, sr);
  m68ki_jump_vector(EXCEPTION_PRIVILEGE_VIOLATION);


  USE_CYCLES(CYC_EXCEPTION[EXCEPTION_PRIVILEGE_VIOLATION] - CYC_INSTRUCTION[REG_IR]);
}
