
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 char** g_cpcc ;
 int g_cpu_ir ;
 int g_cpu_pc ;
 int g_dasm_str ;
 char* get_imm_str_s16 () ;
 int read_imm_16 () ;
 scalar_t__ read_imm_32 () ;
 int sprintf (int ,char*,int,char*,char*,int,int) ;

__attribute__((used)) static void d68020_cpbcc_32(void)
{
 uint extension;
 uint new_pc = g_cpu_pc;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension = read_imm_16();
 new_pc += read_imm_32();
 sprintf(g_dasm_str, "%db%-4s  %s; %x (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[g_cpu_ir&0x3f], get_imm_str_s16(), new_pc, extension);
}
