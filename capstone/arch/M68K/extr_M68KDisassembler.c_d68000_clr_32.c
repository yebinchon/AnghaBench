
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_CLR ;
 int build_ea (int *,int ,int) ;

__attribute__((used)) static void d68000_clr_32(m68k_info *info)
{
 build_ea(info, M68K_INS_CLR, 4);
}
