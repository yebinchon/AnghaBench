
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_dasm_str ;
 char* get_imm_str_u8 () ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_eori_to_ccr(void)
{
 sprintf(g_dasm_str, "eori    %s, CCR", get_imm_str_u8());
}
