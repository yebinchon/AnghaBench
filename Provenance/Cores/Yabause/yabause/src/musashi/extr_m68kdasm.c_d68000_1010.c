
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68000_1010(void)
{
 sprintf(g_dasm_str, "dc.w    $%04x; opcode 1010", g_cpu_ir);
}
