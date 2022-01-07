
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_15__ {int ty; } ;
typedef TYPE_1__ Node ;
typedef int Map ;


 int RESTORE_JUMP_LABELS () ;
 int SET_JUMP_LABELS (char*,char*) ;
 TYPE_1__* ast_compound_stmt (int *) ;
 TYPE_1__* ast_conv (int ,TYPE_1__*) ;
 TYPE_1__* ast_dest (char*) ;
 TYPE_1__* ast_if (TYPE_1__*,int *,TYPE_1__*) ;
 TYPE_1__* ast_jump (char*) ;
 int expect (char) ;
 scalar_t__ is_flotype (int ) ;
 int * localenv ;
 char* make_label () ;
 int * make_map_parent (int *) ;
 int * make_vector () ;
 TYPE_1__* read_expr_opt () ;
 TYPE_1__* read_opt_decl_or_stmt () ;
 TYPE_1__* read_stmt () ;
 int type_bool ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Node *read_for_stmt() {
    expect('(');
    char *beg = make_label();
    char *mid = make_label();
    char *end = make_label();
    Map *orig = localenv;
    localenv = make_map_parent(localenv);
    Node *init = read_opt_decl_or_stmt();
    Node *cond = read_expr_opt();
    if (cond && is_flotype(cond->ty))
        cond = ast_conv(type_bool, cond);
    expect(';');
    Node *step = read_expr_opt();
    expect(')');
    SET_JUMP_LABELS(mid, end);
    Node *body = read_stmt();
    RESTORE_JUMP_LABELS();
    localenv = orig;

    Vector *v = make_vector();
    if (init)
        vec_push(v, init);
    vec_push(v, ast_dest(beg));
    if (cond)
        vec_push(v, ast_if(cond, ((void*)0), ast_jump(end)));
    if (body)
        vec_push(v, body);
    vec_push(v, ast_dest(mid));
    if (step)
        vec_push(v, step);
    vec_push(v, ast_jump(beg));
    vec_push(v, ast_dest(end));
    return ast_compound_stmt(v);
}
