
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ir; } ;
typedef TYPE_1__ m68k_info ;


 int build_dbxx (TYPE_1__*,int ,int,int) ;
 int * s_dbcc_lut ;

__attribute__((used)) static void build_dbcc(m68k_info *info, int size, int displacement)
{
 build_dbxx(info, s_dbcc_lut[(info->ir >> 8) & 0xf], size, displacement);
}
