
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ kind; int size; } ;
struct TYPE_6__ {TYPE_3__* ty; } ;
typedef TYPE_1__ Node ;


 scalar_t__ KIND_STRUCT ;
 int SAVE ;
 int emit_addr (TYPE_1__*) ;
 int emit_expr (TYPE_1__*) ;
 scalar_t__ is_flotype (TYPE_3__*) ;
 int push (char*) ;
 scalar_t__ push_struct (int ) ;
 int push_xmm (int ) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static int emit_args(Vector *vals) {
    SAVE;
    int r = 0;
    for (int i = 0; i < vec_len(vals); i++) {
        Node *v = vec_get(vals, i);
        if (v->ty->kind == KIND_STRUCT) {
            emit_addr(v);
            r += push_struct(v->ty->size);
        } else if (is_flotype(v->ty)) {
            emit_expr(v);
            push_xmm(0);
            r += 8;
        } else {
            emit_expr(v);
            push("rax");
            r += 8;
        }
    }
    return r;
}
