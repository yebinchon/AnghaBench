
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; int count; int file; int sval; } ;
typedef TYPE_1__ Token ;
struct TYPE_8__ {int file; int include_guard; } ;
typedef TYPE_2__ CondIncl ;


 scalar_t__ TIDENT ;
 int cond_incl_stack ;
 int do_read_if (int) ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect_newline () ;
 TYPE_1__* lex () ;
 int macros ;
 int map_get (int ,int ) ;
 int tok2s (TYPE_1__*) ;
 TYPE_2__* vec_tail (int ) ;

__attribute__((used)) static void read_ifndef() {
    Token *tok = lex();
    if (tok->kind != TIDENT)
        errort(tok, "identifier expected, but got %s", tok2s(tok));
    expect_newline();
    do_read_if(!map_get(macros, tok->sval));
    if (tok->count == 2) {


        CondIncl *ci = vec_tail(cond_incl_stack);
        ci->include_guard = tok->sval;
        ci->file = tok->file;
    }
}
