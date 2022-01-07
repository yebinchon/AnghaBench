
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DASMFLAG_STEP_OVER ;
 int SET_OPCODE_FLAGS (int ) ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_jsr(void)
{
 sprintf(g_dasm_str, "jsr     %s", get_ea_mode_str_32(g_cpu_ir));
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OVER);
}
