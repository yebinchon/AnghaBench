
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_COLON ;
 int TOKEN_QUESTION ;
 int expect_token (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_expr_ternary (int ,int *,int *,int *) ;
 int * parse_expr_or () ;
 TYPE_1__ token ;

Expr *parse_expr_ternary(void) {
    SrcPos pos = token.pos;
    Expr *expr = parse_expr_or();
    if (match_token(TOKEN_QUESTION)) {
        Expr *then_expr = parse_expr_ternary();
        expect_token(TOKEN_COLON);
        Expr *else_expr = parse_expr_ternary();
        expr = new_expr_ternary(pos, expr, then_expr, else_expr);
    }
    return expr;
}
