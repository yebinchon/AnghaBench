
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int m68k_info ;


 int build_dbcc (int *,int ,int ) ;
 int make_int_16 (int ) ;
 int read_imm_16 (int *) ;

__attribute__((used)) static void d68000_dbcc(m68k_info *info)
{
 build_dbcc(info, 0, make_int_16(read_imm_16(info)));
}
