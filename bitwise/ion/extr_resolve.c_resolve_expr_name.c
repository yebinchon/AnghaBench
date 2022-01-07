
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; int name; int pos; } ;
typedef int Operand ;
typedef TYPE_1__ Expr ;


 scalar_t__ EXPR_NAME ;
 int assert (int) ;
 int resolve_name_operand (int ,int ) ;

Operand resolve_expr_name(Expr *expr) {
    assert(expr->kind == EXPR_NAME);
    return resolve_name_operand(expr->pos, expr->name);
}
