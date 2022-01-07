
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_not_32(void)
{
 sprintf(g_dasm_str, "not.l   %s", get_ea_mode_str_32(g_cpu_ir));
}
