
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68010_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 char* get_imm_str_s32 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68020_cmpi_pcdi_32(void)
{
 char* str;
 LIMIT_CPU_TYPES(M68010_PLUS);
 str = get_imm_str_s32();
 sprintf(g_dasm_str, "cmpi.l  %s, %s; (2+)", str, get_ea_mode_str_32(g_cpu_ir));
}
