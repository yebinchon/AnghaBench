
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_ONLY ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int ) ;
 char* get_imm_str_u8 () ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68020_callm(void)
{
 char* str;
 LIMIT_CPU_TYPES(M68020_ONLY);
 str = get_imm_str_u8();

 sprintf(g_dasm_str, "callm   %s, %s; (2)", str, get_ea_mode_str_8(g_cpu_ir));
}
