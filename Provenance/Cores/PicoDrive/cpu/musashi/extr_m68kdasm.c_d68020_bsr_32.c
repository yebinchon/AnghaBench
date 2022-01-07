
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int DASMFLAG_STEP_OVER ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int SET_OPCODE_FLAGS (int ) ;
 int g_cpu_pc ;
 int g_dasm_str ;
 int read_imm_32 () ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68020_bsr_32(void)
{
 uint temp_pc = g_cpu_pc;
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "bsr     $%x; (2+)", temp_pc + read_imm_32());
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OVER);
}
