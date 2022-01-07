
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_EORI ;
 int M68K_REG_CCR ;
 int build_imm_special_reg (int *,int ,int ,int,int ) ;
 int read_imm_8 (int *) ;

__attribute__((used)) static void d68000_eori_to_ccr(m68k_info *info)
{
 build_imm_special_reg(info, M68K_INS_EORI, read_imm_8(info), 1, M68K_REG_CCR);
}
