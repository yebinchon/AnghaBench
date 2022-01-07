
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int g_cpu_ir ;
 int g_cpu_pc ;
 int g_dasm_str ;
 int make_int_8 (int ) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static void d68000_bra_8(void)
{
 uint temp_pc = g_cpu_pc;
 sprintf(g_dasm_str, "bra     %x", temp_pc + make_int_8(g_cpu_ir));
}
