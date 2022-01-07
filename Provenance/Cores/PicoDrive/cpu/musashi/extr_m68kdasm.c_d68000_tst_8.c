
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int ) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_tst_8(void)
{
 sprintf(g_dasm_str, "tst.b   %s", get_ea_mode_str_8(g_cpu_ir));
}
