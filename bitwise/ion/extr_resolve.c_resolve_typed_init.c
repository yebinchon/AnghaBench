
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ base; int incomplete_elems; int size; int num_elems; } ;
typedef TYPE_1__ Type ;
struct TYPE_18__ {TYPE_1__* type; } ;
typedef int SrcPos ;
typedef TYPE_2__ Operand ;
typedef int Expr ;


 int convert_operand (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ is_array_type (TYPE_1__*) ;
 scalar_t__ is_incomplete_array_type (TYPE_1__*) ;
 scalar_t__ is_ptr_type (TYPE_1__*) ;
 TYPE_2__ operand_decay (TYPE_2__) ;
 TYPE_2__ resolve_expected_expr (int *,TYPE_1__*) ;
 int set_resolved_expected_type (int *,TYPE_1__*) ;
 TYPE_1__* unqualify_type (TYPE_1__*) ;

Type *resolve_typed_init(SrcPos pos, Type *type, Expr *expr) {
    Type *expected_type = unqualify_type(type);
    Operand operand = resolve_expected_expr(expr, expected_type);
    if (is_incomplete_array_type(type)) {
        if (is_array_type(operand.type) && type->base == operand.type->base) {

            type->num_elems = operand.type->num_elems;
            type->size = operand.type->size;
            type->incomplete_elems = 0;
            set_resolved_expected_type(expr, type);
            return type;
        } else if (is_ptr_type(operand.type) && type->base == operand.type->base) {
            set_resolved_expected_type(expr, operand.type);
            return operand.type;
        }
    }
    if (type && is_ptr_type(type)) {
        operand = operand_decay(operand);
    }
    if (!convert_operand(&operand, expected_type)) {
        return ((void*)0);
    }
    set_resolved_expected_type(expr, operand.type);
    return operand.type;
}
