
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* else_expr; TYPE_2__* then_expr; TYPE_2__* cond; } ;
struct TYPE_9__ {TYPE_1__ ternary; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_TERNARY ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_ternary(SrcPos pos, Expr *cond, Expr *then_expr, Expr *else_expr) {
    Expr *e = new_expr(EXPR_TERNARY, pos);
    e->ternary.cond = cond;
    e->ternary.then_expr = then_expr;
    e->ternary.else_expr = else_expr;
    return e;
}
