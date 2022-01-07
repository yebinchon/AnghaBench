
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Node ;


 int * ast_compound_stmt (int *) ;
 int * make_vector () ;
 scalar_t__ next_token (char) ;
 int read_decl_or_stmt (int *) ;

__attribute__((used)) static Node *read_opt_decl_or_stmt() {
    if (next_token(';'))
        return ((void*)0);
    Vector *list = make_vector();
    read_decl_or_stmt(list);
    return ast_compound_stmt(list);
}
