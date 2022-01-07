
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int Type ;
struct TYPE_8__ {int expr; int type; } ;
struct TYPE_10__ {scalar_t__ kind; int pos; TYPE_1__ cast; } ;
struct TYPE_9__ {int * type; } ;
typedef TYPE_2__ Operand ;
typedef TYPE_3__ Expr ;


 scalar_t__ EXPR_CAST ;
 int assert (int) ;
 int cast_operand (TYPE_2__*,int *) ;
 int fatal_error (int ,char*,int ,int ) ;
 int get_type_name (int *) ;
 TYPE_2__ resolve_expected_expr_rvalue (int ,int *) ;
 int * resolve_typespec (int ) ;

Operand resolve_expr_cast(Expr *expr) {
    assert(expr->kind == EXPR_CAST);
    Type *type = resolve_typespec(expr->cast.type);
    Operand operand = resolve_expected_expr_rvalue(expr->cast.expr, type);
    if (!cast_operand(&operand, type)) {
        fatal_error(expr->pos, "Invalid type cast from %s to %s", get_type_name(operand.type), get_type_name(type));
    }
    return operand;
}
