
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68010_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_16 (int ) ;
 char* get_imm_str_s16 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68020_cmpi_pcdi_16(void)
{
 char* str;
 LIMIT_CPU_TYPES(M68010_PLUS);
 str = get_imm_str_s16();
 sprintf(g_dasm_str, "cmpi.w  %s, %s; (2+)", str, get_ea_mode_str_16(g_cpu_ir));
}
