
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int RegVal; } ;
typedef TYPE_1__ MCOperand ;



void MCOperand_setReg(MCOperand *op, unsigned Reg)
{
 op->RegVal = Reg;
}
