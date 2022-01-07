
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_imm_str_s16 () ;
 int sprintf (int ,char*,int,char*) ;

__attribute__((used)) static void d68000_link_16(void)
{
 sprintf(g_dasm_str, "link    A%d, %s", g_cpu_ir&7, get_imm_str_s16());
}
