
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int * ast_jump (int ) ;
 int errort (int *,char*) ;
 int expect (char) ;
 int lcontinue ;

__attribute__((used)) static Node *read_continue_stmt(Token *tok) {
    expect(';');
    if (!lcontinue)
        errort(tok, "stray continue statement");
    return ast_jump(lcontinue);
}
