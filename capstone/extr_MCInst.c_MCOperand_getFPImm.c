
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double FPImmVal; } ;
typedef TYPE_1__ MCOperand ;



double MCOperand_getFPImm(const MCOperand *op)
{
 return op->FPImmVal;
}
