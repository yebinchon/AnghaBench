
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 int error (char*) ;
 TYPE_1__* get () ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static void skip_parentheses(Vector *buf) {
    for (;;) {
        Token *tok = get();
        if (tok->kind == TEOF)
            error("premature end of input");
        vec_push(buf, tok);
        if (is_keyword(tok, ')'))
            return;
        if (is_keyword(tok, '('))
            skip_parentheses(buf);
    }
}
