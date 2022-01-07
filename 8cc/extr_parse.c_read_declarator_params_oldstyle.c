
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {scalar_t__ kind; int sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 int ast_lvar (int ,int ) ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_1__* get () ;
 scalar_t__ next_token (char) ;
 int tok2s (TYPE_1__*) ;
 int type_int ;
 int vec_push (int *,int ) ;

__attribute__((used)) static void read_declarator_params_oldstyle(Vector *vars) {
    for (;;) {
        Token *tok = get();
        if (tok->kind != TIDENT)
            errort(tok, "identifier expected, but got %s", tok2s(tok));
        vec_push(vars, ast_lvar(type_int, tok->sval));
        if (next_token(')'))
            return;
        if (!next_token(','))
            errort(tok, "comma expected, but got %s", tok2s(get()));
    }
}
