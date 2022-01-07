
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 char** g_cc ;
 int g_cpu_ir ;
 int g_cpu_pc ;
 int g_dasm_str ;
 int read_imm_32 () ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static void d68020_bcc_32(void)
{
 uint temp_pc = g_cpu_pc;
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "b%-2s     $%x; (2+)", g_cc[(g_cpu_ir>>8)&0xf], temp_pc + read_imm_32());
}
