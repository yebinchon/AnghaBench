
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int ) ;
 char* get_imm_str_s8 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68000_cmpi_8(void)
{
 char* str = get_imm_str_s8();
 sprintf(g_dasm_str, "cmpi.b  %s, %s", str, get_ea_mode_str_8(g_cpu_ir));
}
