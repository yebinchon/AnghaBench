
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68040_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_imm_str_u32 () ;
 int sprintf (int ,char*,int,char*) ;

__attribute__((used)) static void d68040_move16_pi_al(void)
{
 LIMIT_CPU_TYPES(M68040_PLUS);
 sprintf(g_dasm_str, "move16  (A%d)+, %s; (4)", g_cpu_ir&7, get_imm_str_u32());
}
