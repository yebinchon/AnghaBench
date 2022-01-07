
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int KELSE ;
 int * ast_if (int *,int *,int *) ;
 int expect (char) ;
 int next_token (int ) ;
 int * read_boolean_expr () ;
 int * read_stmt () ;

__attribute__((used)) static Node *read_if_stmt() {
    expect('(');
    Node *cond = read_boolean_expr();
    expect(')');
    Node *then = read_stmt();
    if (!next_token(KELSE))
        return ast_if(cond, then, ((void*)0));
    Node *els = read_stmt();
    return ast_if(cond, then, els);
}
