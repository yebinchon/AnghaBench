
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_16__ {int ty; } ;
typedef TYPE_1__ Node ;


 int RESTORE_SWITCH_CONTEXT () ;
 int SET_SWITCH_CONTEXT (char*) ;
 TYPE_1__* ast_binop (int ,char,TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* ast_compound_stmt (int *) ;
 TYPE_1__* ast_dest (char*) ;
 TYPE_1__* ast_jump (char*) ;
 TYPE_1__* ast_lvar (int ,int ) ;
 int cases ;
 TYPE_1__* conv (int ) ;
 char* defaultcase ;
 int ensure_inttype (TYPE_1__*) ;
 int expect (char) ;
 char* make_label () ;
 TYPE_1__* make_switch_jump (TYPE_1__*,int ) ;
 int make_tempname () ;
 int * make_vector () ;
 int read_expr () ;
 TYPE_1__* read_stmt () ;
 int vec_get (int ,int) ;
 int vec_len (int ) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Node *read_switch_stmt() {
    expect('(');
    Node *expr = conv(read_expr());
    ensure_inttype(expr);
    expect(')');

    char *end = make_label();
    SET_SWITCH_CONTEXT(end);
    Node *body = read_stmt();
    Vector *v = make_vector();
    Node *var = ast_lvar(expr->ty, make_tempname());
    vec_push(v, ast_binop(expr->ty, '=', var, expr));
    for (int i = 0; i < vec_len(cases); i++)
        vec_push(v, make_switch_jump(var, vec_get(cases, i)));
    vec_push(v, ast_jump(defaultcase ? defaultcase : end));
    if (body)
        vec_push(v, body);
    vec_push(v, ast_dest(end));
    RESTORE_SWITCH_CONTEXT();
    return ast_compound_stmt(v);
}
