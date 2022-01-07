
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68010_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68010_bkpt(void)
{
 LIMIT_CPU_TYPES(M68010_PLUS);
 sprintf(g_dasm_str, "bkpt #%d; (1+)", g_cpu_ir&7);
}
