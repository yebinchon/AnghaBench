
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_ROR ;
 int build_3bit_d (int *,int ,int) ;

__attribute__((used)) static void d68000_ror_s_32(m68k_info *info)
{
 build_3bit_d(info, M68K_INS_ROR, 4);
}
