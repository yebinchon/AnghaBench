
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DASMFLAG_STEP_OVER ;
 int SET_OPCODE_FLAGS (int ) ;
 int g_cpu_pc ;
 int g_dasm_str ;
 int make_int_16 (int ) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68000_bsr_16(void)
{
 uint temp_pc = g_cpu_pc;
 sprintf(g_dasm_str, "bsr     $%x", temp_pc + make_int_16(read_imm_16()));
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OVER);
}
