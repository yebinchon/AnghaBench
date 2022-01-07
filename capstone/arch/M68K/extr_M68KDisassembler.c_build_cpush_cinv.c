
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ir; int inst; } ;
typedef TYPE_1__ m68k_info ;
struct TYPE_9__ {int imm; int address_mode; int type; } ;
typedef TYPE_2__ cs_m68k_op ;
struct TYPE_10__ {int op_count; TYPE_2__* operands; } ;
typedef TYPE_3__ cs_m68k ;


 int M68K_AM_IMMEDIATE ;
 int M68K_AM_REG_DIRECT_ADDR ;
 int M68K_INS_INVALID ;
 int M68K_OP_IMM ;
 int M68K_OP_MEM ;
 int M68K_REG_A0 ;
 int MCInst_setOpcode (int ,int) ;
 TYPE_3__* build_init_op (TYPE_1__*,int ,int,int ) ;
 int d68000_invalid (TYPE_1__*) ;

__attribute__((used)) static void build_cpush_cinv(m68k_info *info, int op_offset)
{
 cs_m68k_op* op0;
 cs_m68k_op* op1;
 cs_m68k* ext = build_init_op(info, M68K_INS_INVALID, 2, 0);

 switch ((info->ir >> 3) & 3) {

  case 0:
   d68000_invalid(info);
   return;

  case 1:
   MCInst_setOpcode(info->inst, op_offset + 0);
   break;

  case 2:
   MCInst_setOpcode(info->inst, op_offset + 1);
   break;

  case 3:
   ext->op_count = 1;
   MCInst_setOpcode(info->inst, op_offset + 2);
   break;
 }

 op0 = &ext->operands[0];
 op1 = &ext->operands[1];

 op0->address_mode = M68K_AM_IMMEDIATE;
 op0->type = M68K_OP_IMM;
 op0->imm = (info->ir >> 6) & 3;

 op1->type = M68K_OP_MEM;
 op1->address_mode = M68K_AM_REG_DIRECT_ADDR;
 op1->imm = M68K_REG_A0 + (info->ir & 7);
}
