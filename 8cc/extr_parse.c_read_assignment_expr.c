
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int Token ;
struct TYPE_21__ {scalar_t__ kind; } ;
struct TYPE_20__ {TYPE_4__* ty; } ;
typedef TYPE_1__ Node ;


 TYPE_1__* ast_binop (TYPE_4__*,char,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* ast_conv (TYPE_4__*,TYPE_1__*) ;
 TYPE_1__* binop (int,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* conv (TYPE_1__*) ;
 TYPE_1__* do_read_conditional_expr (TYPE_1__*) ;
 int ensure_lvalue (TYPE_1__*) ;
 int * get () ;
 int get_compound_assign_op (int *) ;
 scalar_t__ is_arithtype (TYPE_4__*) ;
 scalar_t__ is_keyword (int *,char) ;
 TYPE_1__* read_logor_expr () ;
 int unget_token (int *) ;

__attribute__((used)) static Node *read_assignment_expr() {
    Node *node = read_logor_expr();
    Token *tok = get();
    if (!tok)
        return node;
    if (is_keyword(tok, '?'))
        return do_read_conditional_expr(node);
    int cop = get_compound_assign_op(tok);
    if (is_keyword(tok, '=') || cop) {
        Node *value = conv(read_assignment_expr());
        if (is_keyword(tok, '=') || cop)
            ensure_lvalue(node);
        Node *right = cop ? binop(cop, conv(node), value) : value;
        if (is_arithtype(node->ty) && node->ty->kind != right->ty->kind)
            right = ast_conv(node->ty, right);
        return ast_binop(node->ty, '=', node, right);
    }
    unget_token(tok);
    return node;
}
