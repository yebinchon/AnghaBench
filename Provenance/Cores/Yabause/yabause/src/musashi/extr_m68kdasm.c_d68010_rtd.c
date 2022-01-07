
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68010_PLUS ;
 int g_dasm_str ;
 char* get_imm_str_s16 () ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static void d68010_rtd(void)
{
 LIMIT_CPU_TYPES(M68010_PLUS);
 sprintf(g_dasm_str, "rtd     %s; (1+)", get_imm_str_s16());
}
