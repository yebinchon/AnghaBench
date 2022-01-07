
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_12__ {int isstatic; scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
typedef int Node ;


 int DECL_BODY ;
 scalar_t__ KIND_FUNC ;
 int S_EXTERN ;
 int S_STATIC ;
 int S_TYPEDEF ;
 int ast_decl (int *,int *) ;
 int * ast_gvar (TYPE_1__*,char*) ;
 int * ast_lvar (TYPE_1__*,char*) ;
 int ast_typedef (TYPE_1__*,char*) ;
 int copy_incomplete_type (TYPE_1__*) ;
 int ensure_not_void (TYPE_1__*) ;
 int errort (int ,char*,int ) ;
 scalar_t__ next_token (char) ;
 int peek () ;
 int * read_decl_init (TYPE_1__*) ;
 TYPE_1__* read_decl_spec_opt (int*) ;
 TYPE_1__* read_declarator (char**,int ,int *,int ) ;
 int read_static_local_var (TYPE_1__*,char*) ;
 int * stub1 (TYPE_1__*,char*) ;
 int tok2s (int ) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static void read_decl(Vector *block, bool isglobal) {
    int sclass = 0;
    Type *basetype = read_decl_spec_opt(&sclass);
    if (next_token(';'))
        return;
    for (;;) {
        char *name = ((void*)0);
        Type *ty = read_declarator(&name, copy_incomplete_type(basetype), ((void*)0), DECL_BODY);
        ty->isstatic = (sclass == S_STATIC);
        if (sclass == S_TYPEDEF) {
            ast_typedef(ty, name);
        } else if (ty->isstatic && !isglobal) {
            ensure_not_void(ty);
            read_static_local_var(ty, name);
        } else {
            ensure_not_void(ty);
            Node *var = (isglobal ? ast_gvar : ast_lvar)(ty, name);
            if (next_token('=')) {
                vec_push(block, ast_decl(var, read_decl_init(ty)));
            } else if (sclass != S_EXTERN && ty->kind != KIND_FUNC) {
                vec_push(block, ast_decl(var, ((void*)0)));
            }
        }
        if (next_token(';'))
            return;
        if (!next_token(','))
            errort(peek(), "';' or ',' are expected, but got %s", tok2s(peek()));
    }
}
