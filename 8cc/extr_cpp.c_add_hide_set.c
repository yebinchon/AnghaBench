
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {int hideset; } ;
typedef TYPE_1__ Token ;
typedef int Set ;


 TYPE_1__* copy_token (int ) ;
 int * make_vector () ;
 int set_union (int ,int *) ;
 int vec_get (int *,int) ;
 int vec_len (int *) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Vector *add_hide_set(Vector *tokens, Set *hideset) {
    Vector *r = make_vector();
    for (int i = 0; i < vec_len(tokens); i++) {
        Token *t = copy_token(vec_get(tokens, i));
        t->hideset = set_union(t->hideset, hideset);
        vec_push(r, t);
    }
    return r;
}
