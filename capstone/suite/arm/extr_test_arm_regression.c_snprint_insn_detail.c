
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* detail; } ;
typedef TYPE_4__ cs_insn ;
struct TYPE_10__ {scalar_t__ type; scalar_t__ value; } ;
struct TYPE_9__ {int scale; int disp; scalar_t__ index; scalar_t__ base; } ;
struct TYPE_12__ {TYPE_3__ shift; int imm; TYPE_2__ mem; int fp; scalar_t__ reg; scalar_t__ type; } ;
typedef TYPE_5__ cs_arm_op ;
struct TYPE_13__ {int op_count; scalar_t__ cc; scalar_t__ writeback; scalar_t__ update_flags; TYPE_5__* operands; } ;
typedef TYPE_6__ cs_arm ;
struct TYPE_8__ {TYPE_6__ arm; } ;


 scalar_t__ ARM_CC_AL ;
 scalar_t__ ARM_CC_INVALID ;






 scalar_t__ ARM_SFT_ASR_REG ;
 scalar_t__ ARM_SFT_INVALID ;
 scalar_t__ X86_REG_INVALID ;
 int _this_printf (char*,...) ;
 int cs_reg_name (int ,scalar_t__) ;
 int handle ;

__attribute__((used)) static void snprint_insn_detail(char * buf, size_t * cur, size_t * left, cs_insn *ins)
{
 size_t used = 0;
 cs_arm *arm;
 int i;


 if (ins->detail == ((void*)0))
  return;

 arm = &(ins->detail->arm);

 if (arm->op_count)
  { size_t used = 0; used = snprintf(buf + *cur, *left, "\top_count: %u\n", arm->op_count); *left -= used; *cur += used; };

 for (i = 0; i < arm->op_count; i++) {
  cs_arm_op *op = &(arm->operands[i]);
  switch((int)op->type) {
   default:
    break;
   case 128:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: REG = %s\n", i, cs_reg_name(handle, op->reg)); *left -= used; *cur += used; };
    break;
   case 131:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: IMM = 0x%x\n", i, op->imm); *left -= used; *cur += used; };
    break;
   case 132:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: FP = %f\n", i, op->fp); *left -= used; *cur += used; };
    break;
   case 130:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: MEM\n", i); *left -= used; *cur += used; };
    if (op->mem.base != X86_REG_INVALID)
     { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\toperands[%u].mem.base: REG = %s\n", i, cs_reg_name(handle, op->mem.base)); *left -= used; *cur += used; };

    if (op->mem.index != X86_REG_INVALID)
     { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\toperands[%u].mem.index: REG = %s\n", i, cs_reg_name(handle, op->mem.index)); *left -= used; *cur += used; };

    if (op->mem.scale != 1)
     { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\toperands[%u].mem.scale: %u\n", i, op->mem.scale); *left -= used; *cur += used; };
    if (op->mem.disp != 0)
     { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\toperands[%u].mem.disp: 0x%x\n", i, op->mem.disp); *left -= used; *cur += used; };

    break;
   case 129:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: P-IMM = %u\n", i, op->imm); *left -= used; *cur += used; };
    break;
   case 133:
    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\toperands[%u].type: C-IMM = %u\n", i, op->imm); *left -= used; *cur += used; };
    break;
  }

  if (op->shift.type != ARM_SFT_INVALID && op->shift.value) {
   if (op->shift.type < ARM_SFT_ASR_REG) {

    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\tShift: %u = %u\n", op->shift.type, op->shift.value); *left -= used; *cur += used; };
   } else {

    { size_t used = 0; used = snprintf(buf + *cur, *left, "\t\t\tShift: %u = %s\n", op->shift.type, cs_reg_name(handle, op->shift.value)); *left -= used; *cur += used; };

   }
  }
 }

 if (arm->cc != ARM_CC_AL && arm->cc != ARM_CC_INVALID) {
  { size_t used = 0; used = snprintf(buf + *cur, *left, "\tCode condition: %u\n", arm->cc); *left -= used; *cur += used; };
 }

 if (arm->update_flags) {
  { size_t used = 0; used = snprintf(buf + *cur, *left, "\tUpdate-flags: True\n"); *left -= used; *cur += used; };
 }

 if (arm->writeback) {
  { size_t used = 0; used = snprintf(buf + *cur, *left, "\tWrite-back: True\n"); *left -= used; *cur += used; };
 }


}
