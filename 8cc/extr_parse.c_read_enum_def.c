
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_14__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_2__ Token ;
typedef int Node ;


 scalar_t__ KIND_ENUM ;
 scalar_t__ TIDENT ;
 int * ast_inttype (TYPE_1__*,int ) ;
 int env () ;
 int errort (TYPE_2__*,char*,char*) ;
 TYPE_2__* get () ;
 scalar_t__ is_keyword (TYPE_2__*,char) ;
 TYPE_1__* map_get (int ,char*) ;
 int map_put (int ,char*,int *) ;
 scalar_t__ next_token (char) ;
 TYPE_2__* peek () ;
 int read_intexpr () ;
 int tags ;
 char* tok2s (TYPE_2__*) ;
 int * type_enum ;
 TYPE_1__* type_int ;
 int unget_token (TYPE_2__*) ;

__attribute__((used)) static Type *read_enum_def() {
    char *tag = ((void*)0);
    Token *tok = get();



    if (tok->kind == TIDENT) {
        tag = tok->sval;
        tok = get();
    }
    if (tag) {
        Type *ty = map_get(tags, tag);
        if (ty && ty->kind != KIND_ENUM)
            errort(tok, "declarations of %s does not match", tag);
    }
    if (!is_keyword(tok, '{')) {
        if (!tag || !map_get(tags, tag))
            errort(tok, "enum tag %s is not defined", tag);
        unget_token(tok);
        return type_int;
    }
    if (tag)
        map_put(tags, tag, type_enum);

    int val = 0;
    for (;;) {
        tok = get();
        if (is_keyword(tok, '}'))
            break;
        if (tok->kind != TIDENT)
            errort(tok, "identifier expected, but got %s", tok2s(tok));
        char *name = tok->sval;

        if (next_token('='))
            val = read_intexpr();
        Node *constval = ast_inttype(type_int, val++);
        map_put(env(), name, constval);
        if (next_token(','))
            continue;
        if (next_token('}'))
            break;
        errort(peek(), "',' or '}' expected, but got %s", tok2s(peek()));
    }
    return type_int;
}
