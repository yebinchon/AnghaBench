
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_floattype (int ,int ) ;
 TYPE_1__* ast_inttype (int ,int ) ;
 TYPE_1__* binop (char,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* conv (TYPE_1__*) ;
 int ensure_arithtype (TYPE_1__*) ;
 scalar_t__ is_inttype (int ) ;
 TYPE_1__* read_cast_expr () ;

__attribute__((used)) static Node *read_unary_minus() {
    Node *expr = read_cast_expr();
    ensure_arithtype(expr);
    if (is_inttype(expr->ty))
        return binop('-', conv(ast_inttype(expr->ty, 0)), conv(expr));
    return binop('-', ast_floattype(expr->ty, 0), expr);
}
