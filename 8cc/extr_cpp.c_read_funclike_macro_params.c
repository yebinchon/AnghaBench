
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_1__ Token ;
typedef int Map ;


 char KELLIPSIS ;
 scalar_t__ TIDENT ;
 scalar_t__ TNEWLINE ;
 int errort (TYPE_1__*,char*,...) ;
 int expect (char) ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 TYPE_1__* lex () ;
 int make_macro_token (int ,int) ;
 int map_put (int *,char*,int ) ;
 scalar_t__ next (char) ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static bool read_funclike_macro_params(Token *name, Map *param) {
    int pos = 0;
    for (;;) {
        Token *tok = lex();
        if (is_keyword(tok, ')'))
            return 0;
        if (pos) {
            if (!is_keyword(tok, ','))
                errort(tok, ", expected, but got %s", tok2s(tok));
            tok = lex();
        }
        if (tok->kind == TNEWLINE)
            errort(name, "missing ')' in macro parameter list");
        if (is_keyword(tok, KELLIPSIS)) {
            map_put(param, "__VA_ARGS__", make_macro_token(pos++, 1));
            expect(')');
            return 1;
        }
        if (tok->kind != TIDENT)
            errort(tok, "identifier expected, but got %s", tok2s(tok));
        char *arg = tok->sval;
        if (next(KELLIPSIS)) {
            expect(')');
            map_put(param, arg, make_macro_token(pos++, 1));
            return 1;
        }
        map_put(param, arg, make_macro_token(pos++, 0));
    }
}
