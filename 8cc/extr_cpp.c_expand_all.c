
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 int * make_vector () ;
 int propagate_space (int *,TYPE_1__*) ;
 TYPE_1__* read_expand () ;
 int token_buffer_stash (int ) ;
 int token_buffer_unstash () ;
 int vec_push (int *,TYPE_1__*) ;
 int vec_reverse (int *) ;

__attribute__((used)) static Vector *expand_all(Vector *tokens, Token *tmpl) {
    token_buffer_stash(vec_reverse(tokens));
    Vector *r = make_vector();
    for (;;) {
        Token *tok = read_expand();
        if (tok->kind == TEOF)
            break;
        vec_push(r, tok);
    }
    propagate_space(r, tmpl);
    token_buffer_unstash();
    return r;
}
