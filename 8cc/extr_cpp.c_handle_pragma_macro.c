
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 int TNUMBER ;
 scalar_t__ TSTRING ;
 int errort (TYPE_1__*,char*,int ) ;
 int expect (char) ;
 int make_token_pushback (TYPE_1__*,int ,char*) ;
 int parse_pragma_operand (TYPE_1__*) ;
 TYPE_1__* read_token () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void handle_pragma_macro(Token *tmpl) {
    expect('(');
    Token *operand = read_token();
    if (operand->kind != TSTRING)
        errort(operand, "_Pragma takes a string literal, but got %s", tok2s(operand));
    expect(')');
    parse_pragma_operand(operand);
    make_token_pushback(tmpl, TNUMBER, "1");
}
