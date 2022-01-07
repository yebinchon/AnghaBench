
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pos; } ;
typedef int Operand ;
typedef TYPE_1__ Expr ;


 int fatal_error (int ,char*) ;
 int is_cond_operand (int ) ;
 int resolve_expr_rvalue (TYPE_1__*) ;

void resolve_cond_expr(Expr *expr) {
    Operand cond = resolve_expr_rvalue(expr);
    if (!is_cond_operand(cond)) {
        fatal_error(expr->pos, "Conditional expression must have scalar type");
    }
}
