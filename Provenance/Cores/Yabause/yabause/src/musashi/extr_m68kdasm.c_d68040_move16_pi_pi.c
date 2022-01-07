
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68040_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static void d68040_move16_pi_pi(void)
{
 LIMIT_CPU_TYPES(M68040_PLUS);
 sprintf(g_dasm_str, "move16  (A%d)+, (A%d)+; (4)", g_cpu_ir&7, (read_imm_16()>>12)&7);
}
