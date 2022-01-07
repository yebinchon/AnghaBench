
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_6__ {int post; TYPE_2__* expr; int op; } ;
struct TYPE_7__ {TYPE_1__ modify; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_MODIFY ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_modify(SrcPos pos, TokenKind op, bool post, Expr *expr) {
    Expr *e = new_expr(EXPR_MODIFY, pos);
    e->modify.op = op;
    e->modify.post = post;
    e->modify.expr = expr;
    return e;
}
