
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ kind; int space; int sval; } ;
typedef TYPE_1__ Token ;
typedef int Map ;


 scalar_t__ TIDENT ;
 scalar_t__ TNEWLINE ;
 TYPE_1__* copy_token (TYPE_1__*) ;
 TYPE_1__* lex () ;
 int * make_vector () ;
 TYPE_1__* map_get (int *,int ) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Vector *read_funclike_macro_body(Map *param) {
    Vector *r = make_vector();
    for (;;) {
        Token *tok = lex();
        if (tok->kind == TNEWLINE)
            return r;
        if (tok->kind == TIDENT) {
            Token *subst = map_get(param, tok->sval);
            if (subst) {
                subst = copy_token(subst);
                subst->space = tok->space;
                vec_push(r, subst);
                continue;
            }
        }
        vec_push(r, tok);
    }
}
