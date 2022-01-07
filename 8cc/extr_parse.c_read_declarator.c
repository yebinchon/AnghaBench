
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
typedef int Type ;
struct TYPE_6__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_1__ Token ;


 int DECL_BODY ;
 int DECL_CAST ;
 int DECL_PARAM ;
 scalar_t__ TIDENT ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect (char) ;
 TYPE_1__* get () ;
 scalar_t__ is_type (int ) ;
 int * make_ptr_type (int *) ;
 int * make_stub_type () ;
 scalar_t__ next_token (char) ;
 int peek () ;
 int * read_declarator_func (int *,int *) ;
 int * read_declarator_tail (int *,int *) ;
 int skip_type_qualifiers () ;
 int tok2s (TYPE_1__*) ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static Type *read_declarator(char **rname, Type *basety, Vector *params, int ctx) {
    if (next_token('(')) {


        if (is_type(peek()))
            return read_declarator_func(basety, params);






        Type *stub = make_stub_type();
        Type *t = read_declarator(rname, stub, params, ctx);
        expect(')');
        *stub = *read_declarator_tail(basety, params);
        return t;
    }
    if (next_token('*')) {
        skip_type_qualifiers();
        return read_declarator(rname, make_ptr_type(basety), params, ctx);
    }
    Token *tok = get();
    if (tok->kind == TIDENT) {
        if (ctx == DECL_CAST)
            errort(tok, "identifier is not expected, but got %s", tok2s(tok));
        *rname = tok->sval;
        return read_declarator_tail(basety, params);
    }
    if (ctx == DECL_BODY || ctx == DECL_PARAM)
        errort(tok, "identifier, ( or * are expected, but got %s", tok2s(tok));
    unget_token(tok);
    return read_declarator_tail(basety, params);
}
