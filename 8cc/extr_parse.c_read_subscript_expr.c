
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int Token ;
struct TYPE_11__ {TYPE_1__* ty; } ;
struct TYPE_10__ {int ptr; } ;
typedef TYPE_2__ Node ;


 int AST_DEREF ;
 TYPE_2__* ast_uop (int ,int ,TYPE_2__*) ;
 TYPE_2__* binop (char,int ,int ) ;
 int conv (TYPE_2__*) ;
 int errort (int *,char*) ;
 int expect (char) ;
 int * peek () ;
 TYPE_2__* read_expr () ;

__attribute__((used)) static Node *read_subscript_expr(Node *node) {
    Token *tok = peek();
    Node *sub = read_expr();
    if (!sub)
        errort(tok, "subscription expected");
    expect(']');
    Node *t = binop('+', conv(node), conv(sub));
    return ast_uop(AST_DEREF, t->ty->ptr, t);
}
