
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Type ;
struct TYPE_5__ {int is_lvalue; int type; } ;
typedef TYPE_1__ Operand ;


 int cast_operand (TYPE_1__*,int *) ;
 scalar_t__ is_convertible (TYPE_1__*,int *) ;
 int unqualify_type (int ) ;

bool convert_operand(Operand *operand, Type *type) {
    if (is_convertible(operand, type)) {
        cast_operand(operand, type);
        operand->type = unqualify_type(operand->type);
        operand->is_lvalue = 0;
        return 1;
    }
    return 0;
}
