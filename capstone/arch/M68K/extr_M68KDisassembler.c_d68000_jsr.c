
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_9__ {int * operands; } ;
typedef TYPE_2__ cs_m68k ;


 int M68K_GRP_JUMP ;
 int M68K_INS_JSR ;
 TYPE_2__* build_init_op (TYPE_1__*,int ,int,int ) ;
 int get_ea_mode_op (TYPE_1__*,int *,int ,int) ;
 int set_insn_group (TYPE_1__*,int ) ;

__attribute__((used)) static void d68000_jsr(m68k_info *info)
{
 cs_m68k* ext = build_init_op(info, M68K_INS_JSR, 1, 0);
 set_insn_group(info, M68K_GRP_JUMP);
 get_ea_mode_op(info, &ext->operands[0], info->ir, 4);
}
