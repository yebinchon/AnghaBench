
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int slen; int sval; int enc; int c; } ;
typedef TYPE_1__ Token ;
typedef int Node ;


 char KGENERIC ;





 int * ast_inttype (int ,int ) ;
 int * ast_string (int ,int ,int ) ;
 int char_type (int ) ;
 int error (char*,int) ;
 int expect (char) ;
 TYPE_1__* get () ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 scalar_t__ next_token (char) ;
 int * read_expr () ;
 int * read_generic () ;
 int * read_number (TYPE_1__*) ;
 int * read_stmt_expr () ;
 int * read_var_or_func (int ) ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static Node *read_primary_expr() {
    Token *tok = get();
    if (!tok) return ((void*)0);
    if (is_keyword(tok, '(')) {
        if (next_token('{'))
            return read_stmt_expr();
        Node *r = read_expr();
        expect(')');
        return r;
    }
    if (is_keyword(tok, KGENERIC)) {
        return read_generic();
    }
    switch (tok->kind) {
    case 131:
        return read_var_or_func(tok->sval);
    case 129:
        return read_number(tok);
    case 132:
        return ast_inttype(char_type(tok->enc), tok->c);
    case 128:
        return ast_string(tok->enc, tok->sval, tok->slen);
    case 130:
        unget_token(tok);
        return ((void*)0);
    default:
        error("internal error: unknown token kind: %d", tok->kind);
    }
}
