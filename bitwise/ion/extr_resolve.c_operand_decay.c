
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_lvalue; int type; } ;
typedef TYPE_1__ Operand ;


 int type_decay (int ) ;

Operand operand_decay(Operand operand) {
    operand.type = type_decay(operand.type);
    operand.is_lvalue = 0;
    return operand;
}
