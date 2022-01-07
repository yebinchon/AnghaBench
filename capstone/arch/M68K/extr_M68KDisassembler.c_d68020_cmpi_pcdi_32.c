
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68010_PLUS ;
 int M68K_INS_CMPI ;
 int build_imm_ea (int *,int ,int,int ) ;
 int read_imm_32 (int *) ;

__attribute__((used)) static void d68020_cmpi_pcdi_32(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68010_PLUS);
 build_imm_ea(info, M68K_INS_CMPI, 4, read_imm_32(info));
}
