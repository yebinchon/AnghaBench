
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_2__ {int kind; int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 scalar_t__ is_mul_op () ;
 int * new_expr_binary (int ,int ,int *,int *) ;
 int next_token () ;
 int * parse_expr_unary () ;
 TYPE_1__ token ;

Expr *parse_expr_mul(void) {
    Expr *expr = parse_expr_unary();
    while (is_mul_op()) {
        SrcPos pos = token.pos;
        TokenKind op = token.kind;
        next_token();
        expr = new_expr_binary(pos, op, expr, parse_expr_unary());
    }
    return expr;
}
