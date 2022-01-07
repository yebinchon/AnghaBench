
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ TokenKind ;
struct TYPE_2__ {scalar_t__ kind; int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 scalar_t__ TOKEN_DEC ;
 scalar_t__ TOKEN_INC ;
 scalar_t__ is_unary_op () ;
 int * new_expr_modify (int ,scalar_t__,int,int *) ;
 int * new_expr_unary (int ,scalar_t__,int *) ;
 int next_token () ;
 int * parse_expr_base () ;
 TYPE_1__ token ;

Expr *parse_expr_unary(void) {
    if (is_unary_op()) {
        SrcPos pos = token.pos;
        TokenKind op = token.kind;
        next_token();
        if (op == TOKEN_INC || op == TOKEN_DEC) {
            return new_expr_modify(pos, op, 0, parse_expr_unary());
        } else {
            return new_expr_unary(pos, op, parse_expr_unary());
        }
    } else {
        return parse_expr_base();
    }
}
