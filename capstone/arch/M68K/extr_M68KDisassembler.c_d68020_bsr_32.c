
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68020_PLUS ;
 int M68K_INS_BSR ;
 int build_relative_branch (int *,int ,int,int ) ;
 int peek_imm_32 (int *) ;

__attribute__((used)) static void d68020_bsr_32(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_relative_branch(info, M68K_INS_BSR, 4, peek_imm_32(info));
}
