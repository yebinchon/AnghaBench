
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int csh ;
struct TYPE_7__ {int mem; int imm; int reg; scalar_t__ type; } ;
typedef TYPE_2__ cs_mos65xx_op ;
struct TYPE_8__ {int op_count; TYPE_2__* operands; scalar_t__ modifies_flags; int am; } ;
typedef TYPE_3__ cs_mos65xx ;
typedef int cs_mode ;
struct TYPE_9__ {TYPE_1__* detail; } ;
typedef TYPE_4__ cs_insn ;
struct TYPE_6__ {TYPE_3__ mos65xx; } ;





 int add_str (char**,char*,...) ;
 int cs_reg_name (int ,int ) ;
 int get_am_name (int ) ;
 scalar_t__ malloc (int) ;

char *get_detail_mos65xx(csh *handle, cs_mode mode, cs_insn *ins)
{
 int i;
 cs_mos65xx *mos65xx;
 char *result;

 result = (char *)malloc(sizeof(char));
 result[0] = '\0';

 if (ins->detail == ((void*)0))
  return result;

 mos65xx = &(ins->detail->mos65xx);
 add_str(&result, " ; address mode: %s", get_am_name(mos65xx->am));
 add_str(&result, " ; modifies flags: %s", mos65xx->modifies_flags ? "true": "false");

 if (mos65xx->op_count)
  add_str(&result, " ; op_count: %u", mos65xx->op_count);

 for (i = 0; i < mos65xx->op_count; i++) {
  cs_mos65xx_op *op = &(mos65xx->operands[i]);
  switch((int)op->type) {
   default:
    break;
   case 128:
    add_str(&result, " ; operands[%u].type: REG = %s", i, cs_reg_name(*handle, op->reg));
    break;
   case 130:
    add_str(&result, " ; operands[%u].type: IMM = 0x%x", i, op->imm);
    break;
   case 129:
    add_str(&result, " ; operands[%u].type: MEM = 0x%x", i, op->mem);
    break;
  }
 }
 return result;
}
