
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;
typedef int Node ;


 int ENC_NONE ;
 int * ast_func (int *,char*,int *,int *,int *) ;
 int * ast_string (int ,char*,scalar_t__) ;
 int * current_func_type ;
 int * localenv ;
 int * localvars ;
 int * make_map_parent (int *) ;
 int * make_vector () ;
 int map_put (int *,char*,int *) ;
 int * read_compound_stmt () ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static Node *read_func_body(Type *functype, char *fname, Vector *params) {
    localenv = make_map_parent(localenv);
    localvars = make_vector();
    current_func_type = functype;
    Node *funcname = ast_string(ENC_NONE, fname, strlen(fname) + 1);
    map_put(localenv, "__func__", funcname);
    map_put(localenv, "__FUNCTION__", funcname);
    Node *body = read_compound_stmt();
    Node *r = ast_func(functype, fname, params, body, localvars);
    current_func_type = ((void*)0);
    localenv = ((void*)0);
    localvars = ((void*)0);
    return r;
}
