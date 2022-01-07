
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68040_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_imm_str_u32 () ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static void d68040_move16_al_pi(void)
{
 LIMIT_CPU_TYPES(M68040_PLUS);
 sprintf(g_dasm_str, "move16  %s, (A%d)+; (4)", get_imm_str_u32(), g_cpu_ir&7);
}
