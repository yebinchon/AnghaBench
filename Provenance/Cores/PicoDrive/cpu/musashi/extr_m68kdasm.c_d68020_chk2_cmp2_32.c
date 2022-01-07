
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_B (int) ;
 scalar_t__ BIT_F (int) ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,char*,char*,char,int) ;

__attribute__((used)) static void d68020_chk2_cmp2_32(void)
{
 uint extension;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension = read_imm_16();
 sprintf(g_dasm_str, "%s.l  %s, %c%d; (2+)", BIT_B(extension) ? "chk2" : "cmp2", get_ea_mode_str_32(g_cpu_ir), BIT_F(extension) ? 'A' : 'D', (extension>>12)&7);
}
