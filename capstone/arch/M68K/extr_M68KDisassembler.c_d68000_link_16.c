
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int build_link (int *,int ,int) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_link_16(m68k_info *info)
{
 build_link(info, read_imm_16(info), 2);
}
