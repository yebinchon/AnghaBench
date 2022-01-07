
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 scalar_t__ TEOF ;
 int errort (TYPE_1__*,char*,int ) ;
 int eval_intexpr (int *,int *) ;
 TYPE_1__* lex () ;
 int * read_expr () ;
 int read_intexpr_line () ;
 int tok2s (TYPE_1__*) ;
 int token_buffer_stash (int ) ;
 int token_buffer_unstash () ;
 int vec_reverse (int ) ;

__attribute__((used)) static bool read_constexpr() {
    token_buffer_stash(vec_reverse(read_intexpr_line()));
    Node *expr = read_expr();
    Token *tok = lex();
    if (tok->kind != TEOF)
        errort(tok, "stray token: %s", tok2s(tok));
    token_buffer_unstash();
    return eval_intexpr(expr, ((void*)0));
}
