
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Typespec ;
typedef int SrcPos ;
typedef int Expr ;
typedef int Decl ;


 int TOKEN_ASSIGN ;
 int TOKEN_COLON ;
 int TOKEN_SEMICOLON ;
 int expect_token (int ) ;
 int fatal_error_here (char*,int ) ;
 scalar_t__ match_token (int ) ;
 int * new_decl_var (int ,char const*,int *,int *) ;
 int * parse_expr () ;
 char* parse_name () ;
 int * parse_type () ;
 int token_info () ;

Decl *parse_decl_var(SrcPos pos) {
    const char *name = parse_name();
    if (match_token(TOKEN_ASSIGN)) {
        Expr *expr = parse_expr();
        expect_token(TOKEN_SEMICOLON);
        return new_decl_var(pos, name, ((void*)0), expr);
    } else if (match_token(TOKEN_COLON)) {
        Typespec *type = parse_type();
        Expr *expr = ((void*)0);
        if (match_token(TOKEN_ASSIGN)) {
            expr = parse_expr();
        }
        expect_token(TOKEN_SEMICOLON);
        return new_decl_var(pos, name, type, expr);
    } else {
        fatal_error_here("Expected : or = after var, got %s", token_info());
        return ((void*)0);
    }
}
