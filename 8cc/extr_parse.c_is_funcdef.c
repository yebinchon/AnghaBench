
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 scalar_t__ TIDENT ;
 int error (char*) ;
 TYPE_1__* get () ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 scalar_t__ is_type (TYPE_1__*) ;
 int * make_vector () ;
 TYPE_1__* peek () ;
 int skip_parentheses (int *) ;
 int unget_token (int ) ;
 scalar_t__ vec_len (int *) ;
 int vec_pop (int *) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static bool is_funcdef() {
    Vector *buf = make_vector();
    bool r = 0;
    for (;;) {
        Token *tok = get();
        vec_push(buf, tok);
        if (tok->kind == TEOF)
            error("premature end of input");
        if (is_keyword(tok, ';'))
            break;
        if (is_type(tok))
            continue;
        if (is_keyword(tok, '(')) {
            skip_parentheses(buf);
            continue;
        }
        if (tok->kind != TIDENT)
            continue;
        if (!is_keyword(peek(), '('))
            continue;
        vec_push(buf, get());
        skip_parentheses(buf);
        r = (is_keyword(peek(), '{') || is_type(peek()));
        break;
    }
    while (vec_len(buf) > 0)
        unget_token(vec_pop(buf));
    return r;
}
