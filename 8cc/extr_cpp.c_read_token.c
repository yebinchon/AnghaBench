
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; int * hideset; scalar_t__ bol; } ;
typedef TYPE_1__ Token ;


 scalar_t__ MIN_CPP_TOKEN ;
 int assert (int) ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 TYPE_1__* maybe_convert_keyword (TYPE_1__*) ;
 int read_directive (TYPE_1__*) ;
 TYPE_1__* read_expand () ;

Token *read_token() {
    Token *tok;
    for (;;) {
        tok = read_expand();
        if (tok->bol && is_keyword(tok, '#') && tok->hideset == ((void*)0)) {
            read_directive(tok);
            continue;
        }
        assert(tok->kind < MIN_CPP_TOKEN);
        return maybe_convert_keyword(tok);
    }
}
