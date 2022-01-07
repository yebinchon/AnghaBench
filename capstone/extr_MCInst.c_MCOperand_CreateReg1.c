
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* Operands; } ;
struct TYPE_5__ {unsigned int RegVal; int Kind; } ;
typedef TYPE_1__ MCOperand ;
typedef TYPE_2__ MCInst ;


 size_t MCINST_CACHE ;
 int kRegister ;

MCOperand *MCOperand_CreateReg1(MCInst *mcInst, unsigned Reg)
{
 MCOperand *op = &(mcInst->Operands[MCINST_CACHE]);

 op->Kind = kRegister;
 op->RegVal = Reg;

 return op;
}
