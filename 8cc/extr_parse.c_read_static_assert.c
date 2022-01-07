
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TSTRING ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect (char) ;
 TYPE_1__* get () ;
 int read_intexpr () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void read_static_assert() {
    expect('(');
    int val = read_intexpr();
    expect(',');
    Token *tok = get();
    if (tok->kind != TSTRING)
        errort(tok, "string expected as the second argument for _Static_assert, but got %s", tok2s(tok));
    expect(')');
    expect(';');
    if (!val)
        errort(tok, "_Static_assert failure: %s", tok->sval);
}
