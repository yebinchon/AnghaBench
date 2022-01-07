
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_SBCD ;
 int build_rr (int *,int ,int,int ) ;

__attribute__((used)) static void d68000_sbcd_rr(m68k_info *info)
{
 build_rr(info, M68K_INS_SBCD, 1, 0);
}
