
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
 scalar_t__ make_int_16 (int) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,char*,int,char*,int,int) ;

__attribute__((used)) static void d68020_cpdbcc(void)
{
 uint extension1;
 uint extension2;
 uint new_pc = g_cpu_pc;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension1 = read_imm_16();
 extension2 = read_imm_16();
 new_pc += make_int_16(read_imm_16());
 sprintf(g_dasm_str, "%ddb%-4s D%d,%s; %x (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[extension1&0x3f], g_cpu_ir&7, get_imm_str_s16(), new_pc, extension2);
}
