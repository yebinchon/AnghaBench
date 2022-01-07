
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {scalar_t__ kind; int varname; int ty; struct TYPE_3__* declvar; } ;
typedef TYPE_1__ Node ;


 scalar_t__ AST_DECL ;
 scalar_t__ AST_LVAR ;
 int assert (int) ;
 int error (char*,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void update_oldstyle_param_type(Vector *params, Vector *vars) {
    for (int i = 0; i < vec_len(vars); i++) {
        Node *decl = vec_get(vars, i);
        assert(decl->kind == AST_DECL);
        Node *var = decl->declvar;
        assert(var->kind == AST_LVAR);
        for (int j = 0; j < vec_len(params); j++) {
            Node *param = vec_get(params, j);
            assert(param->kind == AST_LVAR);
            if (strcmp(param->varname, var->varname))
                continue;
            param->ty = var->ty;
            goto found;
        }
        error("missing parameter: %s", var->varname);
    found:;
    }
}
