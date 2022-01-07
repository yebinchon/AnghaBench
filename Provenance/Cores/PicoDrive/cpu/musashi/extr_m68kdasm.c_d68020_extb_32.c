
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68020_extb_32(void)
{
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "extb.l  D%d; (2+)", g_cpu_ir&7);
}
