
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_ANDI ;
 int M68K_REG_SR ;
 int build_imm_special_reg (int *,int ,int ,int,int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_andi_to_sr(m68k_info *info)
{
 build_imm_special_reg(info, M68K_INS_ANDI, read_imm_16(info), 2, M68K_REG_SR);
}
