
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68000_trap(void)
{
 sprintf(g_dasm_str, "trap    #$%x", g_cpu_ir&0xf);
}
