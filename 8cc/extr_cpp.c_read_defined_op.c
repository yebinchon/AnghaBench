
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 TYPE_1__* cpp_token_one ;
 TYPE_1__* cpp_token_zero ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect (char) ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 TYPE_1__* lex () ;
 int macros ;
 scalar_t__ map_get (int ,int ) ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static Token *read_defined_op() {
    Token *tok = lex();
    if (is_keyword(tok, '(')) {
        tok = lex();
        expect(')');
    }
    if (tok->kind != TIDENT)
        errort(tok, "identifier expected, but got %s", tok2s(tok));
    return map_get(macros, tok->sval) ? cpp_token_one : cpp_token_zero;
}
