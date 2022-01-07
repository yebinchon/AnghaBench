
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {size_t size; TYPE_1__* Operands; } ;
struct TYPE_4__ {int ImmVal; int Kind; } ;
typedef TYPE_1__ MCOperand ;
typedef TYPE_2__ MCInst ;


 int kImmediate ;

void MCOperand_CreateImm0(MCInst *mcInst, int64_t Val)
{
 MCOperand *op = &(mcInst->Operands[mcInst->size]);
 mcInst->size++;

 op->Kind = kImmediate;
 op->ImmVal = Val;
}
