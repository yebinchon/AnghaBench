
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_A (int) ;
 scalar_t__ BIT_B (int) ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_32 (int ) ;
 int read_imm_16 () ;
 int sprintf (int ,char*,char,char*,int,...) ;

__attribute__((used)) static void d68020_divl(void)
{
 uint extension;
 LIMIT_CPU_TYPES(M68020_PLUS);
 extension = read_imm_16();

 if(BIT_A(extension))
  sprintf(g_dasm_str, "div%c.l  %s, D%d:D%d; (2+)", BIT_B(extension) ? 's' : 'u', get_ea_mode_str_32(g_cpu_ir), extension&7, (extension>>12)&7);
 else if((extension&7) == ((extension>>12)&7))
  sprintf(g_dasm_str, "div%c.l  %s, D%d; (2+)", BIT_B(extension) ? 's' : 'u', get_ea_mode_str_32(g_cpu_ir), (extension>>12)&7);
 else
  sprintf(g_dasm_str, "div%cl.l %s, D%d:D%d; (2+)", BIT_B(extension) ? 's' : 'u', get_ea_mode_str_32(g_cpu_ir), extension&7, (extension>>12)&7);
}
