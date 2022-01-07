
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** g_cc ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int) ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static void d68000_scc(void)
{
 sprintf(g_dasm_str, "s%-2s     %s", g_cc[(g_cpu_ir>>8)&0xf], get_ea_mode_str_8(g_cpu_ir));
}
