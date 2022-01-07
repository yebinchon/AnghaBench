
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ Operand ;


 int is_scalar_type (int ) ;
 TYPE_1__ operand_decay (TYPE_1__) ;

bool is_cond_operand(Operand operand) {
    operand = operand_decay(operand);
    return is_scalar_type(operand.type);
}
