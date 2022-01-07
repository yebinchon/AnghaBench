
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Node ;


 int * ast_compound_stmt (int *) ;
 int * make_vector () ;
 int * read_stmt () ;
 int vec_push (int *,int *) ;

__attribute__((used)) static Node *read_label_tail(Node *label) {
    Node *stmt = read_stmt();
    Vector *v = make_vector();
    vec_push(v, label);
    if (stmt)
        vec_push(v, stmt);
    return ast_compound_stmt(v);
}
