
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_CMPI ;
 int build_imm_ea (int *,int ,int,int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_cmpi_16(m68k_info *info)
{
 build_imm_ea(info, M68K_INS_CMPI, 2, read_imm_16(info));
}
