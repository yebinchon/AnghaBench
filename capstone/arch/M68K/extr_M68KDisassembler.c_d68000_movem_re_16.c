
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_MOVEM ;
 int build_movem_re (int *,int ,int) ;

__attribute__((used)) static void d68000_movem_re_16(m68k_info *info)
{
 build_movem_re(info, M68K_INS_MOVEM, 2);
}
