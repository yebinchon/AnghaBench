
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Node ;


 int RESTORE_JUMP_LABELS () ;
 int SET_JUMP_LABELS (char*,char*) ;
 int * ast_compound_stmt (int *) ;
 int ast_dest (char*) ;
 int ast_if (int *,int *,int ) ;
 int ast_jump (char*) ;
 int expect (char) ;
 char* make_label () ;
 int * make_vector () ;
 int * read_boolean_expr () ;
 int * read_stmt () ;
 int vec_push (int *,int ) ;

__attribute__((used)) static Node *read_while_stmt() {
    expect('(');
    Node *cond = read_boolean_expr();
    expect(')');

    char *beg = make_label();
    char *end = make_label();
    SET_JUMP_LABELS(beg, end);
    Node *body = read_stmt();
    RESTORE_JUMP_LABELS();

    Vector *v = make_vector();
    vec_push(v, ast_dest(beg));
    vec_push(v, ast_if(cond, body, ast_jump(end)));
    vec_push(v, ast_jump(beg));
    vec_push(v, ast_dest(end));
    return ast_compound_stmt(v);
}
