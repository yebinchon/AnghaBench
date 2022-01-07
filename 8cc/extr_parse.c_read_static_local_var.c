
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;
typedef int Node ;
typedef int Map ;


 int ast_decl (int *,int *) ;
 int * ast_static_lvar (int *,char*) ;
 int * localenv ;
 scalar_t__ next_token (char) ;
 int * read_decl_init (int *) ;
 int toplevels ;
 int vec_push (int ,int ) ;

__attribute__((used)) static void read_static_local_var(Type *ty, char *name) {
    Node *var = ast_static_lvar(ty, name);
    Vector *init = ((void*)0);
    if (next_token('=')) {
        Map *orig = localenv;
        localenv = ((void*)0);
        init = read_decl_init(ty);
        localenv = orig;
    }
    vec_push(toplevels, ast_decl(var, init));
}
