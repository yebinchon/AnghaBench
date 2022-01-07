
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_binop (int ,char,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ next_token (char) ;
 TYPE_1__* read_assignment_expr () ;

__attribute__((used)) static Node *read_comma_expr() {
    Node *node = read_assignment_expr();
    while (next_token(',')) {
        Node *expr = read_assignment_expr();
        node = ast_binop(expr->ty, ',', node, expr);
    }
    return node;
}
