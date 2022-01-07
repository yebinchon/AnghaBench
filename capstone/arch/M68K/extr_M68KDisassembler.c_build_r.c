
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {void* reg; void* address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 void* M68K_AM_REG_DIRECT_DATA ;
 void* M68K_REG_D0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void build_r(m68k_info *info, int opcode, uint8_t size)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, opcode, 2, size);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->address_mode = M68K_AM_REG_DIRECT_DATA;
 op0->reg = M68K_REG_D0 + ((info->ir >> 9) & 7);

 op1->address_mode = M68K_AM_REG_DIRECT_DATA;
 op1->reg = M68K_REG_D0 + (info->ir & 7);
}
