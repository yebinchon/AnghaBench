
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_OR_OR ;
 scalar_t__ match_token (int ) ;
 int * new_expr_binary (int ,int ,int *,int *) ;
 int * parse_expr_and () ;
 TYPE_1__ token ;

Expr *parse_expr_or(void) {
    Expr *expr = parse_expr_and();
    while (match_token(TOKEN_OR_OR)) {
        SrcPos pos = token.pos;
        expr = new_expr_binary(pos, TOKEN_OR_OR, expr, parse_expr_and());
    }
    return expr;
}
