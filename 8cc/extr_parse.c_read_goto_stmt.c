
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ kind; int sval; } ;
typedef TYPE_2__ Token ;
struct TYPE_17__ {TYPE_1__* ty; } ;
struct TYPE_15__ {scalar_t__ kind; } ;
typedef TYPE_3__ Node ;


 scalar_t__ KIND_PTR ;
 scalar_t__ TIDENT ;
 TYPE_3__* ast_computed_goto (TYPE_3__*) ;
 TYPE_3__* ast_goto (int ) ;
 int errort (TYPE_2__*,char*,int ) ;
 int expect (char) ;
 TYPE_2__* get () ;
 int gotos ;
 scalar_t__ next_token (char) ;
 int node2s (TYPE_3__*) ;
 TYPE_2__* peek () ;
 TYPE_3__* read_cast_expr () ;
 int tok2s (TYPE_2__*) ;
 int vec_push (int ,TYPE_3__*) ;

__attribute__((used)) static Node *read_goto_stmt() {
    if (next_token('*')) {

        Token *tok = peek();
        Node *expr = read_cast_expr();
        if (expr->ty->kind != KIND_PTR)
            errort(tok, "pointer expected for computed goto, but got %s", node2s(expr));
        return ast_computed_goto(expr);
    }
    Token *tok = get();
    if (!tok || tok->kind != TIDENT)
        errort(tok, "identifier expected, but got %s", tok2s(tok));
    expect(';');
    Node *r = ast_goto(tok->sval);
    vec_push(gotos, r);
    return r;
}
