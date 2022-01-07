
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* Operands; } ;
struct TYPE_5__ {int ImmVal; int Kind; } ;
typedef TYPE_1__ MCOperand ;
typedef TYPE_2__ MCInst ;


 size_t MCINST_CACHE ;
 int kImmediate ;

MCOperand *MCOperand_CreateImm1(MCInst *mcInst, int64_t Val)
{
 MCOperand *op = &(mcInst->Operands[MCINST_CACHE]);

 op->Kind = kImmediate;
 op->ImmVal = Val;

 return op;
}
