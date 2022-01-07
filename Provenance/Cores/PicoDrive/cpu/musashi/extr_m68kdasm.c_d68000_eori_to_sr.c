
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_dasm_str ;
 char* get_imm_str_u16 () ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_eori_to_sr(void)
{
 sprintf(g_dasm_str, "eori    %s, SR", get_imm_str_u16());
}
