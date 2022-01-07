
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_1__* lex () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static Token *read_ident() {
    Token *tok = lex();
    if (tok->kind != TIDENT)
        errort(tok, "identifier expected, but got %s", tok2s(tok));
    return tok;
}
