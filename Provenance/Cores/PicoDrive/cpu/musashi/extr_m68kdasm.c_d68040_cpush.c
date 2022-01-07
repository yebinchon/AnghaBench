
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68040_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,...) ;

__attribute__((used)) static void d68040_cpush(void)
{
 LIMIT_CPU_TYPES(M68040_PLUS);
 switch((g_cpu_ir>>3)&3)
 {
  case 0:
   sprintf(g_dasm_str, "cpush (illegal scope); (4)");
   break;
  case 1:
   sprintf(g_dasm_str, "cpushl  %d, (A%d); (4)", (g_cpu_ir>>6)&3, g_cpu_ir&7);
   break;
  case 2:
   sprintf(g_dasm_str, "cpushp  %d, (A%d); (4)", (g_cpu_ir>>6)&3, g_cpu_ir&7);
   break;
  case 3:
   sprintf(g_dasm_str, "cpusha  %d; (4)", (g_cpu_ir>>6)&3);
   break;
 }
}
