
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
typedef int Token ;
struct TYPE_9__ {TYPE_1__* ty; } ;
typedef TYPE_2__ Node ;


 scalar_t__ KIND_FUNC ;
 TYPE_2__* ast_funcdesg (TYPE_1__*,char*) ;
 int env () ;
 int errort (int *,char*,char*) ;
 int is_keyword (int *,char) ;
 TYPE_1__* make_func_type (int ,int ,int,int) ;
 int make_vector () ;
 TYPE_2__* map_get (int ,char*) ;
 int * peek () ;
 int type_int ;
 int warnt (int *,char*,char*) ;

__attribute__((used)) static Node *read_var_or_func(char *name) {
    Node *v = map_get(env(), name);
    if (!v) {
        Token *tok = peek();
        if (!is_keyword(tok, '('))
            errort(tok, "undefined variable: %s", name);
        Type *ty = make_func_type(type_int, make_vector(), 1, 0);
        warnt(tok, "assume returning int: %s()", name);
        return ast_funcdesg(ty, name);
    }
    if (v->ty->kind == KIND_FUNC)
        return ast_funcdesg(v->ty, name);
    return v;
}
