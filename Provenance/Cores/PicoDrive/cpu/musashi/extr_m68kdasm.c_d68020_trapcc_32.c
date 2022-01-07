
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DASMFLAG_STEP_OVER ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int SET_OPCODE_FLAGS (int ) ;
 char** g_cc ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_imm_str_u32 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68020_trapcc_32(void)
{
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "trap%-2s  %s; (2+)", g_cc[(g_cpu_ir>>8)&0xf], get_imm_str_u32());
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OVER);
}
