
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int ty; } ;
typedef TYPE_1__ Node ;


 int * make_vector () ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static Vector *param_types(Vector *params) {
    Vector *r = make_vector();
    for (int i = 0; i < vec_len(params); i++) {
        Node *param = vec_get(params, i);
        vec_push(r, param->ty);
    }
    return r;
}
