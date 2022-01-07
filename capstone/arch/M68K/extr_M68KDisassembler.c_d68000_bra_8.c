
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ir; } ;
typedef TYPE_1__ m68k_info ;


 int M68K_INS_BRA ;
 int build_relative_branch (TYPE_1__*,int ,int,int ) ;
 int make_int_8 (int ) ;

__attribute__((used)) static void d68000_bra_8(m68k_info *info)
{
 build_relative_branch(info, M68K_INS_BRA, 1, make_int_8(info->ir));
}
