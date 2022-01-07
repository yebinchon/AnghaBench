
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {int * operands; } ;
typedef TYPE_2__ cs_m68k ;


 TYPE_2__* build_init_op (TYPE_1__*,int,int,int ) ;
 int get_ea_mode_op (TYPE_1__*,int *,int ,int ) ;

__attribute__((used)) static void build_ea(m68k_info *info, int opcode, uint8_t size)
{
 cs_m68k* ext = build_init_op(info, opcode, 1, size);
 get_ea_mode_op(info, &ext->operands[0], info->ir, size);
}
