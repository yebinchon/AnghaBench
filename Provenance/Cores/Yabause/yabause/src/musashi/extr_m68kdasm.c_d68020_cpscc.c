
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
 char* get_ea_mode_str_8 (int) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,char*,char*,int) ;

__attribute__((used)) static void d68020_cpscc(void)
{
 uint extension1;
 uint extension2;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension1 = read_imm_16();
 extension2 = read_imm_16();
 sprintf(g_dasm_str, "%ds%-4s  %s; (extension = %x) (2-3)", (g_cpu_ir>>9)&7, g_cpcc[extension1&0x3f], get_ea_mode_str_8(g_cpu_ir), extension2);
}
