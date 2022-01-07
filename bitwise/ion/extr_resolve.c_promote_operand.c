
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* type; } ;
struct TYPE_5__ {int kind; } ;
typedef TYPE_2__ Operand ;
 int cast_operand (TYPE_2__*,int ) ;
 int type_int ;

void promote_operand(Operand *operand) {
    switch (operand->type->kind) {
    case 134:
    case 133:
    case 131:
    case 129:
    case 130:
    case 128:
    case 132:
        cast_operand(operand, type_int);
        break;
    default:

        break;
    }
}
