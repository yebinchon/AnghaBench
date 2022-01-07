
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_1__* Operands; } ;
struct TYPE_4__ {unsigned int RegVal; int Kind; } ;
typedef TYPE_1__ MCOperand ;
typedef TYPE_2__ MCInst ;


 int kRegister ;

void MCOperand_CreateReg0(MCInst *mcInst, unsigned Reg)
{
 MCOperand *op = &(mcInst->Operands[mcInst->size]);
 mcInst->size++;

 op->Kind = kRegister;
 op->RegVal = Reg;
}
