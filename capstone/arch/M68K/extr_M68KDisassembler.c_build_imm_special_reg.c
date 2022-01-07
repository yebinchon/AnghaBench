
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int m68k_reg ;
typedef int m68k_info ;
struct TYPE_4__ {int imm; int reg; int address_mode; int type; } ;
typedef TYPE_1__ cs_m68k_op ;
struct TYPE_5__ {TYPE_1__* operands; } ;
typedef TYPE_2__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_AM_NONE ;
 int M68K_OP_IMM ;
 TYPE_2__* build_init_op (int *,int,int,int) ;

__attribute__((used)) static void build_imm_special_reg(m68k_info *info, int opcode, int imm, int size, m68k_reg reg)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, opcode, 2, size);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->type = M68K_OP_IMM;
 op0->address_mode = M68K_AM_IMMEDIATE;
 op0->imm = imm;

 op1->address_mode = M68K_AM_NONE;
 op1->reg = reg;
}
