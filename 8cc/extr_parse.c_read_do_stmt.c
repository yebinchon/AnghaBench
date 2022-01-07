
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Token ;
typedef int Node ;


 int KWHILE ;
 int RESTORE_JUMP_LABELS () ;
 int SET_JUMP_LABELS (char*,char*) ;
 int * ast_compound_stmt (int *) ;
 int * ast_dest (char*) ;
 int * ast_if (int *,int ,int *) ;
 int ast_jump (char*) ;
 int errort (int *,char*,int ) ;
 int expect (char) ;
 int * get () ;
 int is_keyword (int *,int ) ;
 char* make_label () ;
 int * make_vector () ;
 int * read_boolean_expr () ;
 int * read_stmt () ;
 int tok2s (int *) ;
 int vec_push (int *,int *) ;

__attribute__((used)) static Node *read_do_stmt() {
    char *beg = make_label();
    char *end = make_label();
    SET_JUMP_LABELS(beg, end);
    Node *body = read_stmt();
    RESTORE_JUMP_LABELS();
    Token *tok = get();
    if (!is_keyword(tok, KWHILE))
        errort(tok, "'while' is expected, but got %s", tok2s(tok));
    expect('(');
    Node *cond = read_boolean_expr();
    expect(')');
    expect(';');

    Vector *v = make_vector();
    vec_push(v, ast_dest(beg));
    if (body)
        vec_push(v, body);
    vec_push(v, ast_if(cond, ast_jump(beg), ((void*)0)));
    vec_push(v, ast_dest(end));
    return ast_compound_stmt(v);
}
