
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68010_PLUS ;
 int M68K_GRP_RET ;
 int M68K_INS_RTD ;
 int build_absolute_jump_with_immediate (int *,int ,int ,int ) ;
 int read_imm_16 (int *) ;
 int set_insn_group (int *,int ) ;

__attribute__((used)) static void d68010_rtd(m68k_info *info)
{
 set_insn_group(info, M68K_GRP_RET);
 LIMIT_CPU_TYPES(info, M68010_PLUS);
 build_absolute_jump_with_immediate(info, M68K_INS_RTD, 0, read_imm_16(info));
}
