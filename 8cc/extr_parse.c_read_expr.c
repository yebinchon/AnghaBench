
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Node ;


 int errort (int *,char*) ;
 int * peek () ;
 int * read_comma_expr () ;

Node *read_expr() {
    Token *tok = peek();
    Node *r = read_comma_expr();
    if (!r)
        errort(tok, "expression expected");
    return r;
}
