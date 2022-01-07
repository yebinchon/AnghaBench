
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {int hasva; int isstatic; int params; scalar_t__ oldstyle; } ;
typedef TYPE_1__ Type ;
typedef int Node ;


 int DECL_BODY ;
 int S_STATIC ;
 int ast_gvar (TYPE_1__*,char*) ;
 int backfill_labels () ;
 int expect (char) ;
 int globalenv ;
 void* gotos ;
 int labels ;
 int * localenv ;
 int make_map () ;
 int * make_map_parent (int ) ;
 void* make_vector () ;
 int param_types (int *) ;
 TYPE_1__* read_decl_spec_opt (int*) ;
 TYPE_1__* read_declarator (char**,TYPE_1__*,int *,int ) ;
 int * read_func_body (TYPE_1__*,char*,int *) ;
 int read_oldstyle_param_type (int *) ;
 scalar_t__ vec_len (int *) ;

__attribute__((used)) static Node *read_funcdef() {
    int sclass = 0;
    Type *basetype = read_decl_spec_opt(&sclass);
    localenv = make_map_parent(globalenv);
    gotos = make_vector();
    labels = make_map();
    char *name;
    Vector *params = make_vector();
    Type *functype = read_declarator(&name, basetype, params, DECL_BODY);
    if (functype->oldstyle) {
        if (vec_len(params) == 0)
            functype->hasva = 0;
        read_oldstyle_param_type(params);
        functype->params = param_types(params);
    }
    functype->isstatic = (sclass == S_STATIC);
    ast_gvar(functype, name);
    expect('{');
    Node *r = read_func_body(functype, name, params);
    backfill_labels();
    localenv = ((void*)0);
    return r;
}
