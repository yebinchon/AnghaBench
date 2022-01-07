
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 int do_read_if (int ) ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect_newline () ;
 TYPE_1__* lex () ;
 int macros ;
 int map_get (int ,int ) ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void read_ifdef() {
    Token *tok = lex();
    if (tok->kind != TIDENT)
        errort(tok, "identifier expected, but got %s", tok2s(tok));
    expect_newline();
    do_read_if(map_get(macros, tok->sval));
}
