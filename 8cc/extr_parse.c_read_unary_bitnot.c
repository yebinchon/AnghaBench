
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int Token ;
struct TYPE_9__ {int ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_uop (char,int ,TYPE_1__*) ;
 TYPE_1__* conv (TYPE_1__*) ;
 int errort (int *,char*,int ) ;
 int is_inttype (int ) ;
 int node2s (TYPE_1__*) ;
 TYPE_1__* read_cast_expr () ;

__attribute__((used)) static Node *read_unary_bitnot(Token *tok) {
    Node *expr = read_cast_expr();
    expr = conv(expr);
    if (!is_inttype(expr->ty))
        errort(tok, "invalid use of ~: %s", node2s(expr));
    return ast_uop('~', expr->ty, expr);
}
