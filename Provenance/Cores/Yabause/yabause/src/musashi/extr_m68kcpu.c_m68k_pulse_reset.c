
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_INSTR_MODE ;
 int CPU_PREF_ADDR ;
 int CPU_RUN_MODE ;
 scalar_t__ CPU_STOPPED ;
 int FLAG_INT_MASK ;
 scalar_t__ FLAG_T0 ;
 scalar_t__ FLAG_T1 ;
 int INSTRUCTION_YES ;
 int MFLAG_CLEAR ;
 void* REG_PC ;
 void* REG_SP ;
 scalar_t__ REG_VBR ;
 int RUN_MODE_BERR_AERR_RESET ;
 int RUN_MODE_NORMAL ;
 int SET_CYCLES (int ) ;
 int SFLAG_SET ;
 int m68ki_clear_trace () ;
 int m68ki_jump (void*) ;
 void* m68ki_read_imm_32 () ;
 int m68ki_set_sm_flag (int) ;

void m68k_pulse_reset(void)
{

 CPU_STOPPED = 0;
 SET_CYCLES(0);

 CPU_RUN_MODE = RUN_MODE_BERR_AERR_RESET;
 CPU_INSTR_MODE = INSTRUCTION_YES;


 FLAG_T1 = FLAG_T0 = 0;
 m68ki_clear_trace();

 FLAG_INT_MASK = 0x0700;

 REG_VBR = 0;

 m68ki_set_sm_flag(SFLAG_SET | MFLAG_CLEAR);
 m68ki_jump(0);
 REG_SP = m68ki_read_imm_32();
 REG_PC = m68ki_read_imm_32();
 m68ki_jump(REG_PC);

 CPU_RUN_MODE = RUN_MODE_NORMAL;
}
