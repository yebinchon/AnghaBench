
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_PLUS ;
 int g_cpu_ir ;
 int g_dasm_str ;
 char* get_imm_str_u16 () ;
 int sprintf (int ,char*,int,int,char*) ;

__attribute__((used)) static void d68020_pack_mm(void)
{
 LIMIT_CPU_TYPES(M68020_PLUS);
 sprintf(g_dasm_str, "pack    -(A%d), -(A%d), %s; (2+)", g_cpu_ir&7, (g_cpu_ir>>9)&7, get_imm_str_u16());
}
