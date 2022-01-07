
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TNEWLINE ;
 TYPE_1__* lex () ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static Token *skip_newlines() {
    Token *tok = lex();
    while (tok->kind == TNEWLINE)
        tok = lex();
    unget_token(tok);
    return tok;
}
