
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* index; TYPE_2__* expr; } ;
struct TYPE_8__ {TYPE_1__ index; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_INDEX ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_index(SrcPos pos, Expr *expr, Expr *index) {
    Expr *e = new_expr(EXPR_INDEX, pos);
    e->index.expr = expr;
    e->index.index = index;
    return e;
}
