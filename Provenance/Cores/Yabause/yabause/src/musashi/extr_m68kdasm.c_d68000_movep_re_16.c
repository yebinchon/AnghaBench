
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,int,int) ;

__attribute__((used)) static void d68000_movep_re_16(void)
{
 sprintf(g_dasm_str, "movep.w D%d, ($%x,A%d)", (g_cpu_ir>>9)&7, read_imm_16(), g_cpu_ir&7);
}
