
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BIT_3 (int) ;
 int DASMFLAG_STEP_OUT ;
 int LIMIT_CPU_TYPES (int ) ;
 int M68020_ONLY ;
 int SET_OPCODE_FLAGS (int ) ;
 int g_cpu_ir ;
 int g_dasm_str ;
 int sprintf (int ,char*,char,int) ;

__attribute__((used)) static void d68020_rtm(void)
{
 LIMIT_CPU_TYPES(M68020_ONLY);
 sprintf(g_dasm_str, "rtm     %c%d; (2+)", BIT_3(g_cpu_ir) ? 'A' : 'D', g_cpu_ir&7);
 SET_OPCODE_FLAGS(DASMFLAG_STEP_OUT);
}
