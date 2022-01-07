
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_9__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
struct TYPE_10__ {int ty; } ;
typedef TYPE_2__ Node ;


 scalar_t__ KIND_ARRAY ;
 scalar_t__ KIND_STRUCT ;
 int ast_init (TYPE_2__*,TYPE_1__*,int) ;
 TYPE_2__* conv (int ) ;
 int ensure_assignable (TYPE_1__*,int ) ;
 int expect (char) ;
 scalar_t__ next_token (char) ;
 int read_assignment_expr () ;
 int read_initializer_list (int *,TYPE_1__*,int,int) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static void read_initializer_elem(Vector *inits, Type *ty, int off, bool designated) {
    next_token('=');
    if (ty->kind == KIND_ARRAY || ty->kind == KIND_STRUCT) {
        read_initializer_list(inits, ty, off, designated);
    } else if (next_token('{')) {
        read_initializer_elem(inits, ty, off, 1);
        expect('}');
    } else {
        Node *expr = conv(read_assignment_expr());
        ensure_assignable(ty, expr->ty);
        vec_push(inits, ast_init(expr, ty, off));
    }
}
