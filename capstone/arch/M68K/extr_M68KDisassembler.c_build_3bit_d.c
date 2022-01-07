
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ir; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_8__ {scalar_t__ reg; int address_mode; int imm; int type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_9__ {TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_AM_REG_DIRECT_DATA ;
 int M68K_OP_IMM ;
 scalar_t__ M68K_REG_D0 ;
 TYPE_3__* build_init_op (TYPE_1__*,int,int,int) ;
 int * g_3bit_qdata_table ;

__attribute__((used)) static void build_3bit_d(m68k_info *info, int opcode, int size)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, opcode, 2, size);

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->type = M68K_OP_IMM;
 op0->address_mode = M68K_AM_IMMEDIATE;
 op0->imm = g_3bit_qdata_table[(info->ir >> 9) & 7];

 op1->address_mode = M68K_AM_REG_DIRECT_DATA;
 op1->reg = M68K_REG_D0 + (info->ir & 7);
}
