
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int csh ;
struct TYPE_10__ {scalar_t__ base; int disp; int unit; int scaled; int modify; int direction; int disptype; } ;
struct TYPE_13__ {scalar_t__ reg; int imm; TYPE_2__ mem; scalar_t__ type; } ;
typedef TYPE_5__ cs_tms320c64x_op ;
struct TYPE_12__ {scalar_t__ reg; int zero; } ;
struct TYPE_11__ {int unit; int side; int crosspath; } ;
struct TYPE_14__ {int op_count; int parallel; TYPE_4__ condition; TYPE_3__ funit; TYPE_5__* operands; } ;
typedef TYPE_6__ cs_tms320c64x ;
struct TYPE_15__ {TYPE_1__* detail; } ;
typedef TYPE_7__ cs_insn ;
struct TYPE_9__ {TYPE_6__ tms320c64x; } ;







 int TMS320C64X_MEM_DIR_BW ;
 int TMS320C64X_MEM_DIR_FW ;
 int TMS320C64X_MEM_DIR_INVALID ;
 int TMS320C64X_MEM_DISP_CONSTANT ;
 int TMS320C64X_MEM_DISP_INVALID ;
 int TMS320C64X_MEM_DISP_REGISTER ;
 int TMS320C64X_MEM_MOD_INVALID ;
 int TMS320C64X_MEM_MOD_NO ;
 int TMS320C64X_MEM_MOD_POST ;
 int TMS320C64X_MEM_MOD_PRE ;




 scalar_t__ TMS320C64X_REG_INVALID ;
 char* cs_reg_name (int ,scalar_t__) ;
 int printf (char*,...) ;

void print_insn_detail_tms320c64x(csh handle, cs_insn *ins)
{
 cs_tms320c64x *tms320c64x;
 int i;


 if (ins->detail == ((void*)0))
  return;

 tms320c64x = &(ins->detail->tms320c64x);
 if (tms320c64x->op_count)
  printf("\top_count: %u\n", tms320c64x->op_count);

 for (i = 0; i < tms320c64x->op_count; i++) {
  cs_tms320c64x_op *op = &(tms320c64x->operands[i]);
  switch((int)op->type) {
   default:
    break;
   case 129:
    printf("\t\toperands[%u].type: REG = %s\n", i, cs_reg_name(handle, op->reg));
    break;
   case 131:
    printf("\t\toperands[%u].type: IMM = 0x%x\n", i, op->imm);
    break;
   case 130:
    printf("\t\toperands[%u].type: MEM\n", i);
    if (op->mem.base != TMS320C64X_REG_INVALID)
     printf("\t\t\toperands[%u].mem.base: REG = %s\n",
       i, cs_reg_name(handle, op->mem.base));
    printf("\t\t\toperands[%u].mem.disptype: ", i);
    if(op->mem.disptype == TMS320C64X_MEM_DISP_INVALID) {
     printf("Invalid\n");
     printf("\t\t\toperands[%u].mem.disp: %u\n", i, op->mem.disp);
    }
    if(op->mem.disptype == TMS320C64X_MEM_DISP_CONSTANT) {
     printf("Constant\n");
     printf("\t\t\toperands[%u].mem.disp: %u\n", i, op->mem.disp);
    }
    if(op->mem.disptype == TMS320C64X_MEM_DISP_REGISTER) {
     printf("Register\n");
     printf("\t\t\toperands[%u].mem.disp: %s\n", i, cs_reg_name(handle, op->mem.disp));
    }
    printf("\t\t\toperands[%u].mem.unit: %u\n", i, op->mem.unit);
    printf("\t\t\toperands[%u].mem.direction: ", i);
    if(op->mem.direction == TMS320C64X_MEM_DIR_INVALID)
     printf("Invalid\n");
    if(op->mem.direction == TMS320C64X_MEM_DIR_FW)
     printf("Forward\n");
    if(op->mem.direction == TMS320C64X_MEM_DIR_BW)
     printf("Backward\n");
    printf("\t\t\toperands[%u].mem.modify: ", i);
    if(op->mem.modify == TMS320C64X_MEM_MOD_INVALID)
     printf("Invalid\n");
    if(op->mem.modify == TMS320C64X_MEM_MOD_NO)
     printf("No\n");
    if(op->mem.modify == TMS320C64X_MEM_MOD_PRE)
     printf("Pre\n");
    if(op->mem.modify == TMS320C64X_MEM_MOD_POST)
     printf("Post\n");
    printf("\t\t\toperands[%u].mem.scaled: %u\n", i, op->mem.scaled);

    break;
   case 128:
    printf("\t\toperands[%u].type: REGPAIR = %s:%s\n", i, cs_reg_name(handle, op->reg + 1), cs_reg_name(handle, op->reg));
    break;
  }
 }

 printf("\tFunctional unit: ");
 switch(tms320c64x->funit.unit) {
  case 136:
   printf("D%u\n", tms320c64x->funit.side);
   break;
  case 135:
   printf("L%u\n", tms320c64x->funit.side);
   break;
  case 134:
   printf("M%u\n", tms320c64x->funit.side);
   break;
  case 132:
   printf("S%u\n", tms320c64x->funit.side);
   break;
  case 133:
   printf("No Functional Unit\n");
   break;
  default:
   printf("Unknown (Unit %u, Side %u)\n", tms320c64x->funit.unit, tms320c64x->funit.side);
   break;
 }
 if(tms320c64x->funit.crosspath == 1)
  printf("\tCrosspath: 1\n");

 if(tms320c64x->condition.reg != TMS320C64X_REG_INVALID)
  printf("\tCondition: [%c%s]\n", (tms320c64x->condition.zero == 1) ? '!' : ' ', cs_reg_name(handle, tms320c64x->condition.reg));
 printf("\tParallel: %s\n", (tms320c64x->parallel == 1) ? "true" : "false");

 printf("\n");
}
