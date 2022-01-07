
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ kind; struct TYPE_19__* ptr; } ;
typedef TYPE_1__ Type ;
typedef int Token ;
struct TYPE_20__ {TYPE_1__* ty; } ;
typedef TYPE_2__ Node ;


 int AST_DEREF ;
 scalar_t__ KIND_FUNC ;
 scalar_t__ KIND_PTR ;
 char OP_ARROW ;
 char OP_DEC ;
 char OP_INC ;
 int OP_POST_DEC ;
 int OP_POST_INC ;
 TYPE_2__* ast_uop (int,TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* conv (TYPE_2__*) ;
 int ensure_lvalue (TYPE_2__*) ;
 int error (char*,int ,char*) ;
 int errort (int *,char*,char*) ;
 scalar_t__ is_keyword (int *,char) ;
 scalar_t__ next_token (char) ;
 char* node2s (TYPE_2__*) ;
 int * peek () ;
 TYPE_2__* read_funcall (TYPE_2__*) ;
 TYPE_2__* read_struct_field (TYPE_2__*) ;
 TYPE_2__* read_subscript_expr (TYPE_2__*) ;
 int ty2s (TYPE_1__*) ;

__attribute__((used)) static Node *read_postfix_expr_tail(Node *node) {
    if (!node) return ((void*)0);
    for (;;) {
        if (next_token('(')) {
            Token *tok = peek();
            node = conv(node);
            Type *t = node->ty;
            if (t->kind != KIND_PTR || t->ptr->kind != KIND_FUNC)
                errort(tok, "function expected, but got %s", node2s(node));
            node = read_funcall(node);
            continue;
        }
        if (next_token('[')) {
            node = read_subscript_expr(node);
            continue;
        }
        if (next_token('.')) {
            node = read_struct_field(node);
            continue;
        }
        if (next_token(OP_ARROW)) {
            if (node->ty->kind != KIND_PTR)
                error("pointer type expected, but got %s %s",
                      ty2s(node->ty), node2s(node));
            node = ast_uop(AST_DEREF, node->ty->ptr, node);
            node = read_struct_field(node);
            continue;
        }
        Token *tok = peek();
        if (next_token(OP_INC) || next_token(OP_DEC)) {
            ensure_lvalue(node);
            int op = is_keyword(tok, OP_INC) ? OP_POST_INC : OP_POST_DEC;
            return ast_uop(op, node->ty, node);
        }
        return node;
    }
}
