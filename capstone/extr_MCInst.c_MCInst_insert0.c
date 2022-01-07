
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int * Operands; } ;
typedef int MCOperand ;
typedef TYPE_1__ MCInst ;



void MCInst_insert0(MCInst *inst, int index, MCOperand *Op)
{
 int i;

 for(i = inst->size; i > index; i--)

  inst->Operands[i] = inst->Operands[i-1];

 inst->Operands[index] = *Op;
 inst->size++;
}
