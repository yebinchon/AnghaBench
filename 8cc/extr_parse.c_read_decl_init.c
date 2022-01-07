
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_13__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_15__ {scalar_t__ kind; } ;
struct TYPE_14__ {TYPE_6__* ty; } ;
typedef TYPE_2__ Node ;


 TYPE_2__* ast_conv (TYPE_1__*,TYPE_2__*) ;
 int ast_init (TYPE_2__*,TYPE_1__*,int ) ;
 TYPE_2__* conv (int ) ;
 scalar_t__ is_arithtype (TYPE_6__*) ;
 scalar_t__ is_keyword (int ,char) ;
 scalar_t__ is_string (TYPE_1__*) ;
 int * make_vector () ;
 int peek () ;
 int read_assignment_expr () ;
 int read_initializer_list (int *,TYPE_1__*,int ,int) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static Vector *read_decl_init(Type *ty) {
    Vector *r = make_vector();
    if (is_keyword(peek(), '{') || is_string(ty)) {
        read_initializer_list(r, ty, 0, 0);
    } else {
        Node *init = conv(read_assignment_expr());
        if (is_arithtype(init->ty) && init->ty->kind != ty->kind)
            init = ast_conv(ty, init);
        vec_push(r, ast_init(init, ty, 0));
    }
    return r;
}
