
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TNEWLINE ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_1__* lex () ;
 int tok2s (TYPE_1__*) ;

void expect_newline() {
    Token *tok = lex();
    if (tok->kind != TNEWLINE)
        errort(tok, "newline expected, but got %s", tok2s(tok));
}
