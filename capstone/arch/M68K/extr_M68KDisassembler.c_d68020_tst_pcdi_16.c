
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68020_PLUS ;
 int M68K_INS_TST ;
 int build_ea (int *,int ,int) ;

__attribute__((used)) static void d68020_tst_pcdi_16(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_ea(info, M68K_INS_TST, 2);
}
