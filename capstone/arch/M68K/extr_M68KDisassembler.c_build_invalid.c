
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int M68K_INS_INVALID ;
 int build_imm (int *,int ,int) ;

__attribute__((used)) static void build_invalid(m68k_info *info, int data)
{
 build_imm(info, M68K_INS_INVALID, data);
}
