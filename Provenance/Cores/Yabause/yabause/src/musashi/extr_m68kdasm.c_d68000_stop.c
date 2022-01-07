
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_dasm_str ;
 char* get_imm_str_s16 () ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68000_stop(void)
{
 sprintf(g_dasm_str, "stop    %s", get_imm_str_s16());
}
