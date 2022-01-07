
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;
typedef int Token ;


 char KELLIPSIS ;
 char KVOID ;
 int errort (int *,char*) ;
 int * get () ;
 scalar_t__ is_keyword (int *,char) ;
 scalar_t__ is_type (int *) ;
 int * make_func_type (int *,int *,int,int) ;
 int * make_vector () ;
 scalar_t__ next_token (char) ;
 int * peek () ;
 int read_declarator_params (int *,int *,int*) ;
 int read_declarator_params_oldstyle (int *) ;
 int type_int ;
 int unget_token (int *) ;
 int vec_len (int *) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static Type *read_func_param_list(Vector *paramvars, Type *rettype) {


    Token *tok = get();
    if (is_keyword(tok, KVOID) && next_token(')'))
        return make_func_type(rettype, make_vector(), 0, 0);





    if (is_keyword(tok, ')'))
        return make_func_type(rettype, make_vector(), 1, 1);
    unget_token(tok);

    Token *tok2 = peek();
    if (next_token(KELLIPSIS))
        errort(tok2, "at least one parameter is required before \"...\"");
    if (is_type(peek())) {
        bool ellipsis;
        Vector *paramtypes = make_vector();
        read_declarator_params(paramtypes, paramvars, &ellipsis);
        return make_func_type(rettype, paramtypes, ellipsis, 0);
    }
    if (!paramvars)
        errort(tok, "invalid function definition");
    read_declarator_params_oldstyle(paramvars);
    Vector *paramtypes = make_vector();
    for (int i = 0; i < vec_len(paramvars); i++)
        vec_push(paramtypes, type_int);
    return make_func_type(rettype, paramtypes, 0, 1);
}
