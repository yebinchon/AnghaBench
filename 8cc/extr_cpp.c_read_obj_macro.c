
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TNEWLINE ;
 int hashhash_check (int *) ;
 TYPE_1__* lex () ;
 int macros ;
 int make_obj_macro (int *) ;
 int * make_vector () ;
 int map_put (int ,char*,int ) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static void read_obj_macro(char *name) {
    Vector *body = make_vector();
    for (;;) {
        Token *tok = lex();
        if (tok->kind == TNEWLINE)
            break;
        vec_push(body, tok);
    }
    hashhash_check(body);
    map_put(macros, name, make_obj_macro(body));
}
