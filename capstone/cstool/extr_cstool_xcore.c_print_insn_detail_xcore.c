
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int csh ;
struct TYPE_8__ {int disp; int direct; int index; int base; } ;
struct TYPE_9__ {int imm; TYPE_2__ mem; int reg; scalar_t__ type; } ;
typedef TYPE_3__ cs_xcore_op ;
struct TYPE_10__ {int op_count; TYPE_3__* operands; } ;
typedef TYPE_4__ cs_xcore ;
struct TYPE_11__ {TYPE_1__* detail; } ;
typedef TYPE_5__ cs_insn ;
struct TYPE_7__ {TYPE_4__ xcore; } ;





 int XCORE_REG_INVALID ;
 char* cs_reg_name (int ,int ) ;
 int printf (char*,...) ;

void print_insn_detail_xcore(csh handle, cs_insn *ins)
{
 cs_xcore *xcore;
 int i;


 if (ins->detail == ((void*)0))
  return;

 xcore = &(ins->detail->xcore);
 if (xcore->op_count)
  printf("\top_count: %u\n", xcore->op_count);

 for (i = 0; i < xcore->op_count; i++) {
  cs_xcore_op *op = &(xcore->operands[i]);
  switch((int)op->type) {
   default:
    break;
   case 128:
    printf("\t\toperands[%u].type: REG = %s\n", i, cs_reg_name(handle, op->reg));
    break;
   case 130:
    printf("\t\toperands[%u].type: IMM = 0x%x\n", i, op->imm);
    break;
   case 129:
    printf("\t\toperands[%u].type: MEM\n", i);
    if (op->mem.base != XCORE_REG_INVALID)
     printf("\t\t\toperands[%u].mem.base: REG = %s\n",
       i, cs_reg_name(handle, op->mem.base));
    if (op->mem.index != XCORE_REG_INVALID)
     printf("\t\t\toperands[%u].mem.index: REG = %s\n",
       i, cs_reg_name(handle, op->mem.index));
    if (op->mem.disp != 0)
     printf("\t\t\toperands[%u].mem.disp: 0x%x\n", i, op->mem.disp);
    if (op->mem.direct != 1)
     printf("\t\t\toperands[%u].mem.direct: -1\n", i);


    break;
  }
 }

 printf("\n");
}
