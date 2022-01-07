
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
typedef int cs_m68k_op ;
struct TYPE_8__ {int * operands; } ;
typedef TYPE_2__ cs_m68k ;


 TYPE_2__* build_init_op (TYPE_1__*,int,int,int) ;
 int get_ea_mode_op (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static void build_ea_ea(m68k_info *info, int opcode, int size)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, opcode, 2, size);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 get_ea_mode_op(info, op0, info->ir, size);
 get_ea_mode_op(info, op1, (((info->ir>>9) & 7) | ((info->ir>>3) & 0x38)), size);
}
