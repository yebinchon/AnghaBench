
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_11__ {scalar_t__ kind; int bol; int space; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 scalar_t__ TNEWLINE ;
 TYPE_1__* copy_token (TYPE_1__*) ;
 int errort (TYPE_1__*,char*) ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 TYPE_1__* lex () ;
 int * make_vector () ;
 int read_directive (TYPE_1__*) ;
 int unget_token (TYPE_1__*) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Vector *read_one_arg(Token *ident, bool *end, bool readall) {
    Vector *r = make_vector();
    int level = 0;
    for (;;) {
        Token *tok = lex();
        if (tok->kind == TEOF)
            errort(ident, "unterminated macro argument list");
        if (tok->kind == TNEWLINE)
            continue;
        if (tok->bol && is_keyword(tok, '#')) {
            read_directive(tok);
            continue;
        }
        if (level == 0 && is_keyword(tok, ')')) {
            unget_token(tok);
            *end = 1;
            return r;
        }
        if (level == 0 && is_keyword(tok, ',') && !readall)
            return r;
        if (is_keyword(tok, '('))
            level++;
        if (is_keyword(tok, ')'))
            level--;





        if (tok->bol) {
            tok = copy_token(tok);
            tok->bol = 0;
            tok->space = 1;
        }
        vec_push(r, tok);
    }
}
