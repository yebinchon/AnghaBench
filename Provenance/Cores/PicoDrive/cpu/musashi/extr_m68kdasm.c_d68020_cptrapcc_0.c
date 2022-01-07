
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 char** g_cpcc ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,char*,int) ;

__attribute__((used)) static void d68020_cptrapcc_0(void)
{
 uint extension1;
 uint extension2;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension1 = read_imm_16();
 extension2 = read_imm_16();
 sprintf(g_dasm_str, "%dtrap%-4s; (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[extension1&0x3f], extension2);
}
