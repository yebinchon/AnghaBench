
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_13__ {scalar_t__ kind; char* sval; int hideset; } ;
typedef TYPE_1__ Token ;
struct TYPE_14__ {int kind; int (* fn ) (TYPE_1__*) ;} ;
typedef int Set ;
typedef TYPE_2__ Macro ;





 scalar_t__ TIDENT ;
 int error (char*) ;
 int expect (char) ;
 TYPE_1__* lex () ;
 int macros ;
 TYPE_2__* map_get (int ,char*) ;
 int next (char) ;
 TYPE_1__* peek_token () ;
 int propagate_space (int *,TYPE_1__*) ;
 int * read_args (TYPE_1__*,TYPE_2__*) ;
 TYPE_1__* read_expand () ;
 int * set_add (int ,char*) ;
 scalar_t__ set_has (int ,char*) ;
 int set_intersection (int ,int ) ;
 int stub1 (TYPE_1__*) ;
 int * subst (TYPE_2__*,int *,int *) ;
 int unget_all (int *) ;

__attribute__((used)) static Token *read_expand_newline() {
    Token *tok = lex();
    if (tok->kind != TIDENT)
        return tok;
    char *name = tok->sval;
    Macro *macro = map_get(macros, name);
    if (!macro || set_has(tok->hideset, name))
        return tok;

    switch (macro->kind) {
    case 129: {
        Set *hideset = set_add(tok->hideset, name);
        Vector *tokens = subst(macro, ((void*)0), hideset);
        propagate_space(tokens, tok);
        unget_all(tokens);
        return read_expand();
    }
    case 130: {
        if (!next('('))
            return tok;
        Vector *args = read_args(tok, macro);
        Token *rparen = peek_token();
        expect(')');
        Set *hideset = set_add(set_intersection(tok->hideset, rparen->hideset), name);
        Vector *tokens = subst(macro, args, hideset);
        propagate_space(tokens, tok);
        unget_all(tokens);
        return read_expand();
    }
    case 128:
        macro->fn(tok);
        return read_expand();
    default:
        error("internal error");
    }
}
