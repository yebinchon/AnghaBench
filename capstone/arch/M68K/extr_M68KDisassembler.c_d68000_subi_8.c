
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_SUBI ;
 int build_imm_ea (int *,int ,int,int ) ;
 int read_imm_8 (int *) ;

__attribute__((used)) static void d68000_subi_8(m68k_info *info)
{
 build_imm_ea(info, M68K_INS_SUBI, 1, read_imm_8(info));
}
