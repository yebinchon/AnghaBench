
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_6__ {scalar_t__ kind; } ;
struct TYPE_5__ {TYPE_4__* ty; } ;
typedef TYPE_1__ Node ;


 scalar_t__ KIND_STRUCT ;
 int SAVE ;
 scalar_t__ is_flotype (TYPE_4__*) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static void classify_args(Vector *ints, Vector *floats, Vector *rest, Vector *args) {
    SAVE;
    int ireg = 0, xreg = 0;
    int imax = 6, xmax = 8;
    for (int i = 0; i < vec_len(args); i++) {
        Node *v = vec_get(args, i);
        if (v->ty->kind == KIND_STRUCT)
            vec_push(rest, v);
        else if (is_flotype(v->ty))
            vec_push((xreg++ < xmax) ? floats : rest, v);
        else
            vec_push((ireg++ < imax) ? ints : rest, v);
    }
}
