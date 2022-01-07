
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_INSTR_MODE ;
 int CPU_RUN_MODE ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_000 (int ) ;
 scalar_t__ CPU_TYPE_IS_010 (int ) ;
 scalar_t__ FLAG_S ;
 int INSTRUCTION_YES ;
 scalar_t__* REG_A ;
 int RUN_MODE_NORMAL ;
 int m68ki_exception_format_error () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_fake_pull_16 () ;
 int m68ki_fake_pull_32 () ;
 int m68ki_jump (int) ;
 int m68ki_pull_16 () ;
 int m68ki_pull_32 () ;
 int m68ki_read_16 (scalar_t__) ;
 int m68ki_set_sr (int) ;
 int m68ki_set_sr_noint (int) ;
 int m68ki_trace_t0 () ;

void m68k_op_rte_32(void)
{
 if(FLAG_S)
 {
  uint new_sr;
  uint new_pc;
  uint format_word;

  m68ki_trace_t0();

  if(CPU_TYPE_IS_000(CPU_TYPE))
  {
   new_sr = m68ki_pull_16();
   new_pc = m68ki_pull_32();
   m68ki_jump(new_pc);
   m68ki_set_sr(new_sr);

   CPU_INSTR_MODE = INSTRUCTION_YES;
   CPU_RUN_MODE = RUN_MODE_NORMAL;

   return;
  }

  if(CPU_TYPE_IS_010(CPU_TYPE))
  {
   format_word = m68ki_read_16(REG_A[7]+6) >> 12;
   if(format_word == 0)
   {
    new_sr = m68ki_pull_16();
    new_pc = m68ki_pull_32();
    m68ki_fake_pull_16();
    m68ki_jump(new_pc);
    m68ki_set_sr(new_sr);
    CPU_INSTR_MODE = INSTRUCTION_YES;
    CPU_RUN_MODE = RUN_MODE_NORMAL;
    return;
   }
   CPU_INSTR_MODE = INSTRUCTION_YES;
   CPU_RUN_MODE = RUN_MODE_NORMAL;

   m68ki_exception_format_error();
   return;
  }


rte_loop:
  format_word = m68ki_read_16(REG_A[7]+6) >> 12;
  switch(format_word)
  {
   case 0:
    new_sr = m68ki_pull_16();
    new_pc = m68ki_pull_32();
    m68ki_fake_pull_16();
    m68ki_jump(new_pc);
    m68ki_set_sr(new_sr);
    CPU_INSTR_MODE = INSTRUCTION_YES;
    CPU_RUN_MODE = RUN_MODE_NORMAL;
    return;
   case 1:
    new_sr = m68ki_pull_16();
    m68ki_fake_pull_32();
    m68ki_fake_pull_16();
    m68ki_set_sr_noint(new_sr);
    goto rte_loop;
   case 2:
    new_sr = m68ki_pull_16();
    new_pc = m68ki_pull_32();
    m68ki_fake_pull_16();
    m68ki_fake_pull_32();
    m68ki_jump(new_pc);
    m68ki_set_sr(new_sr);
    CPU_INSTR_MODE = INSTRUCTION_YES;
    CPU_RUN_MODE = RUN_MODE_NORMAL;
    return;
  }

  CPU_INSTR_MODE = INSTRUCTION_YES;
  CPU_RUN_MODE = RUN_MODE_NORMAL;
  m68ki_exception_format_error();
  return;
 }
 m68ki_exception_privilege_violation();
}
