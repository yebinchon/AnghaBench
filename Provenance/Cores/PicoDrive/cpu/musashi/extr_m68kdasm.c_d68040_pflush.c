
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68040_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,char*,...) ;

__attribute__((used)) static void d68040_pflush(void)
{
 LIMIT_CPU_TYPES(M68040_PLUS);

 if (g_cpu_ir & 0x10)
 {
  sprintf(g_dasm_str, "pflusha%s", (g_cpu_ir & 8) ? "" : "n");
 }
 else
 {
  sprintf(g_dasm_str, "pflush%s(A%d)", (g_cpu_ir & 8) ? "" : "n", g_cpu_ir & 7);
 }
}
