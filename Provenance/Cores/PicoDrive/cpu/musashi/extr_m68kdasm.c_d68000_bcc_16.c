
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 char** g_cc ;
 int g_cpu_ir ;
 int g_cpu_pc ;
 int g_dasm_str ;
 int make_int_16 (int ) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,char*,int) ;

__attribute__((used)) static void d68000_bcc_16(void)
{
 uint temp_pc = g_cpu_pc;
 sprintf(g_dasm_str, "b%-2s     $%x", g_cc[(g_cpu_ir>>8)&0xf], temp_pc + make_int_16(read_imm_16()));
}
