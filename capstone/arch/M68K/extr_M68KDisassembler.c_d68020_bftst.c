
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_BFTST ;
 int build_bitfield_ins (int *,int ,int) ;

__attribute__((used)) static void d68020_bftst(m68k_info *info)
{
 build_bitfield_ins(info, M68K_INS_BFTST, 0);
}
