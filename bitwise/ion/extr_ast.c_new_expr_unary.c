
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_6__ {TYPE_2__* expr; int op; } ;
struct TYPE_7__ {TYPE_1__ unary; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int EXPR_UNARY ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_unary(SrcPos pos, TokenKind op, Expr *expr) {
    Expr *e = new_expr(EXPR_UNARY, pos);
    e->unary.op = op;
    e->unary.expr = expr;
    return e;
}
