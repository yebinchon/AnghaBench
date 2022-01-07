
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_SBCD ;
 int build_mm (int *,int ,int ,int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_sbcd_mm(m68k_info *info)
{
 build_mm(info, M68K_INS_SBCD, 0, read_imm_16(info));
}
