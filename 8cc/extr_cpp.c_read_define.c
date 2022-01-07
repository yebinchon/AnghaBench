
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sval; int space; } ;
typedef TYPE_1__ Token ;


 scalar_t__ is_keyword (TYPE_1__*,char) ;
 TYPE_1__* lex () ;
 int read_funclike_macro (TYPE_1__*) ;
 TYPE_1__* read_ident () ;
 int read_obj_macro (int ) ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static void read_define() {
    Token *name = read_ident();
    Token *tok = lex();
    if (is_keyword(tok, '(') && !tok->space) {
        read_funclike_macro(name);
        return;
    }
    unget_token(tok);
    read_obj_macro(name->sval);
}
