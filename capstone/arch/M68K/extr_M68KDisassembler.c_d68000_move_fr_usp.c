
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {scalar_t__ reg; void* address_mode; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 void* M68K_AM_NONE ;
 int M68K_INS_MOVE ;
 scalar_t__ M68K_REG_A0 ;
 scalar_t__ M68K_REG_USP ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static void d68000_move_fr_usp(m68k_info *info)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, M68K_INS_MOVE, 2, 0);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->address_mode = M68K_AM_NONE;
 op0->reg = M68K_REG_USP;

 op1->address_mode = M68K_AM_NONE;
 op1->reg = M68K_REG_A0 + (info->ir & 7);
}
