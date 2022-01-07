
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 scalar_t__ TNEWLINE ;
 TYPE_1__* cpp_token_zero ;
 scalar_t__ is_ident (TYPE_1__*,char*) ;
 int * make_vector () ;
 TYPE_1__* read_defined_op () ;
 TYPE_1__* read_expand_newline () ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static Vector *read_intexpr_line() {
    Vector *r = make_vector();
    for (;;) {
        Token *tok = read_expand_newline();
        if (tok->kind == TNEWLINE)
            return r;
        if (is_ident(tok, "defined")) {
            vec_push(r, read_defined_op());
        } else if (tok->kind == TIDENT) {


            vec_push(r, cpp_token_zero);
        } else {
            vec_push(r, tok);
        }
    }
}
