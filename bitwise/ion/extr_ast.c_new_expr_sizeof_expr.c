
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* sizeof_expr; } ;
typedef int SrcPos ;
typedef TYPE_1__ Expr ;


 int EXPR_SIZEOF_EXPR ;
 TYPE_1__* new_expr (int ,int ) ;

Expr *new_expr_sizeof_expr(SrcPos pos, Expr *expr) {
    Expr *e = new_expr(EXPR_SIZEOF_EXPR, pos);
    e->sizeof_expr = expr;
    return e;
}
