
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68020_ONLY ;
 int M68K_INS_CALLM ;
 int build_imm_ea (int *,int ,int ,int ) ;
 int read_imm_8 (int *) ;

__attribute__((used)) static void d68020_callm(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_ONLY);
 build_imm_ea(info, M68K_INS_CALLM, 0, read_imm_8(info));
}
