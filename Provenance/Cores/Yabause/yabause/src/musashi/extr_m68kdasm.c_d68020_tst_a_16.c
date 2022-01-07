
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_16 (int ) ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68020_tst_a_16(void)
{
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "tst.w   %s; (2+)", get_ea_mode_str_16(g_cpu_ir));
}
