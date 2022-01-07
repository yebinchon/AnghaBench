
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {int * operands; } ;
typedef TYPE_2__ cs_m68k ;


 TYPE_2__* build_init_op (TYPE_1__*,int ,int,int) ;
 int get_ea_mode_op (TYPE_1__*,int *,int,int) ;
 int * s_scc_lut ;

__attribute__((used)) static void d68000_scc(m68k_info *info)
{
 cs_m68k* ext = build_init_op(info, s_scc_lut[(info->ir >> 8) & 0xf], 1, 1);
 get_ea_mode_op(info, &ext->operands[0], info->ir, 1);
}
