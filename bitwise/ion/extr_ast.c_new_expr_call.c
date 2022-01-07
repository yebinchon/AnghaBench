
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t num_args; int args; TYPE_2__* expr; } ;
struct TYPE_9__ {TYPE_1__ call; } ;
typedef int SrcPos ;
typedef TYPE_2__ Expr ;


 int AST_DUP (TYPE_2__**) ;
 int EXPR_CALL ;
 TYPE_2__* new_expr (int ,int ) ;

Expr *new_expr_call(SrcPos pos, Expr *expr, Expr **args, size_t num_args) {
    Expr *e = new_expr(EXPR_CALL, pos);
    e->call.expr = expr;
    e->call.args = AST_DUP(args);
    e->call.num_args = num_args;
    return e;
}
