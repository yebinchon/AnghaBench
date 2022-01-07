
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_MOVEA ;
 int build_ea_a (int *,int ,int) ;

__attribute__((used)) static void d68000_movea_16(m68k_info *info)
{
 build_ea_a(info, M68K_INS_MOVEA, 2);
}
