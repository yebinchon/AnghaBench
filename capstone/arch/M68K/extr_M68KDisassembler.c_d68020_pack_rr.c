
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68020_PLUS ;
 int M68K_INS_PACK ;
 int build_rr (int *,int ,int ,int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68020_pack_rr(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_rr(info, M68K_INS_PACK, 0, read_imm_16(info));
}
