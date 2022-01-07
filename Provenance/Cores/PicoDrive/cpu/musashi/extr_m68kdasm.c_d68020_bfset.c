
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_5 (int) ;
 scalar_t__ BIT_B (int) ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int* g_5bit_data_table ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_ea_mode_str_8 (int ) ;
 int read_imm_16 () ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static void d68020_bfset(void)
{
 uint extension;
 char offset[3];
 char width[3];

 LIMIT_CPU_TYPES(M68020_PLUS);

 extension = read_imm_16();

 if(BIT_B(extension))
  sprintf(offset, "D%d", (extension>>6)&7);
 else
  sprintf(offset, "%d", (extension>>6)&31);
 if(BIT_5(extension))
  sprintf(width, "D%d", extension&7);
 else
  sprintf(width, "%d", g_5bit_data_table[extension&31]);
 sprintf(g_dasm_str, "bfset   %s {%s:%s}; (2+)", get_ea_mode_str_8(g_cpu_ir), offset, width);
}
