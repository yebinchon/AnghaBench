
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* alignof_expr; } ;
typedef int SrcPos ;
typedef TYPE_1__ Expr ;


 int EXPR_ALIGNOF_EXPR ;
 TYPE_1__* new_expr (int ,int ) ;

Expr *new_expr_alignof_expr(SrcPos pos, Expr *expr) {
    Expr *e = new_expr(EXPR_ALIGNOF_EXPR, pos);
    e->alignof_expr = expr;
    return e;
}
