
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {int imm; int type; int address_mode; scalar_t__ reg; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_AM_NONE ;
 int M68K_INS_LINK ;
 int M68K_OP_IMM ;
 scalar_t__ M68K_REG_A0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static void build_link(m68k_info *info, int disp, int size)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, M68K_INS_LINK, 2, size);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->address_mode = M68K_AM_NONE;
 op0->reg = M68K_REG_A0 + (info->ir & 7);

 op1->address_mode = M68K_AM_IMMEDIATE;
 op1->type = M68K_OP_IMM;
 op1->imm = disp;
}
