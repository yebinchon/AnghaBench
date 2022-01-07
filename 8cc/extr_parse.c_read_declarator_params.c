
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;
typedef int Token ;


 int KELLIPSIS ;
 int * ast_lvar (int *,char*) ;
 int ensure_not_void (int *) ;
 int errort (int *,char*,...) ;
 int expect (char) ;
 int * get () ;
 scalar_t__ is_keyword (int *,char) ;
 scalar_t__ next_token (int ) ;
 int * peek () ;
 int * read_func_param (char**,int) ;
 int tok2s (int *) ;
 scalar_t__ vec_len (int *) ;
 int vec_push (int *,int *) ;

__attribute__((used)) static void read_declarator_params(Vector *types, Vector *vars, bool *ellipsis) {
    bool typeonly = !vars;
    *ellipsis = 0;
    for (;;) {
        Token *tok = peek();
        if (next_token(KELLIPSIS)) {
            if (vec_len(types) == 0)
                errort(tok, "at least one parameter is required before \"...\"");
            expect(')');
            *ellipsis = 1;
            return;
        }
        char *name;
        Type *ty = read_func_param(&name, typeonly);
        ensure_not_void(ty);
        vec_push(types, ty);
        if (!typeonly)
            vec_push(vars, ast_lvar(ty, name));
        tok = get();
        if (is_keyword(tok, ')'))
            return;
        if (!is_keyword(tok, ','))
            errort(tok, "comma expected, but got %s", tok2s(tok));
    }
}
