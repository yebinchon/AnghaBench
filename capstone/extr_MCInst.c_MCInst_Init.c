
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int has_imm; int writeback; char* assembly; scalar_t__ popcode_adjust; scalar_t__ ac_idx; scalar_t__ op1_size; scalar_t__ size; scalar_t__ OpcodePub; scalar_t__ Opcode; TYPE_1__* Operands; } ;
struct TYPE_4__ {int Kind; } ;
typedef TYPE_2__ MCInst ;


 int kInvalid ;

void MCInst_Init(MCInst *inst)
{
 unsigned int i;

 for (i = 0; i < 48; i++) {
  inst->Operands[i].Kind = kInvalid;
 }

 inst->Opcode = 0;
 inst->OpcodePub = 0;
 inst->size = 0;
 inst->has_imm = 0;
 inst->op1_size = 0;
 inst->writeback = 0;
 inst->ac_idx = 0;
 inst->popcode_adjust = 0;
 inst->assembly[0] = '\0';
}
