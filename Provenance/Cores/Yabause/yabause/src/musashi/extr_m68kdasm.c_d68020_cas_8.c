
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int ) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,int,int,char*) ;

__attribute__((used)) static void d68020_cas_8(void)
{
 uint extension;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension = read_imm_16();
 sprintf(g_dasm_str, "cas.b   D%d, D%d, %s; (2+)", extension&7, (extension>>6)&7, get_ea_mode_str_8(g_cpu_ir));
}
