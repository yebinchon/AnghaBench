
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_ABCD ;
 int build_mm (int *,int ,int,int ) ;

__attribute__((used)) static void d68000_abcd_mm(m68k_info *info)
{
 build_mm(info, M68K_INS_ABCD, 1, 0);
}
