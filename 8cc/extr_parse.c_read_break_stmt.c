
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int * ast_jump (int ) ;
 int errort (int *,char*) ;
 int expect (char) ;
 int lbreak ;

__attribute__((used)) static Node *read_break_stmt(Token *tok) {
    expect(';');
    if (!lbreak)
        errort(tok, "stray break statement");
    return ast_jump(lbreak);
}
