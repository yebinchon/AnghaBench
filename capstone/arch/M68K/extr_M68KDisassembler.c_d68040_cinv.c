
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68040_PLUS ;
 int M68K_INS_CINVL ;
 int build_cpush_cinv (int *,int ) ;

__attribute__((used)) static void d68040_cinv(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68040_PLUS);
 build_cpush_cinv(info, M68K_INS_CINVL);
}
