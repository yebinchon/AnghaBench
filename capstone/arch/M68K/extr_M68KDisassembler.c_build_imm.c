
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int inst; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {int imm; int address_mode; int type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_OP_IMM ;
 int MCInst_setOpcode (int ,int) ;
 TYPE_3__* build_init_op (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static void build_imm(m68k_info *info, int opcode, int data)
{
 cs_m68k_op* op;
 cs_m68k* ext = build_init_op(info, opcode, 1, 0);

 MCInst_setOpcode(info->inst, opcode);

 op = &ext->operands[0];

 op->type = M68K_OP_IMM;
 op->address_mode = M68K_AM_IMMEDIATE;
 op->imm = data;
}
