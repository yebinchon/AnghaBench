
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pos; } ;
struct TYPE_7__ {int is_const; } ;
typedef TYPE_1__ Operand ;
typedef TYPE_2__ Expr ;


 int fatal_error (int ,char*) ;
 TYPE_1__ resolve_expr (TYPE_2__*) ;

Operand resolve_const_expr(Expr *expr) {
    Operand operand = resolve_expr(expr);
    if (!operand.is_const) {
        fatal_error(expr->pos, "Expected constant expression");
    }
    return operand;
}
