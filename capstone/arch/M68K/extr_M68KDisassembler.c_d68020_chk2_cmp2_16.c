
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int LIMIT_CPU_TYPES (int *,int ) ;
 int M68020_PLUS ;
 int build_chk2_cmp2 (int *,int) ;

__attribute__((used)) static void d68020_chk2_cmp2_16(m68k_info *info)
{
 LIMIT_CPU_TYPES(info, M68020_PLUS);
 build_chk2_cmp2(info, 2);
}
