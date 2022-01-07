
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int ImmVal; } ;
typedef TYPE_1__ MCOperand ;



int64_t MCOperand_getImm(MCOperand *op)
{
 return op->ImmVal;
}
