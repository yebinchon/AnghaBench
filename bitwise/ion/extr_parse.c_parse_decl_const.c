
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
 scalar_t__ match_token (int ) ;
 int * new_decl_const (int ,char const*,int *,int *) ;
 int * parse_expr () ;
 char* parse_name () ;
 int * parse_type () ;

Decl *parse_decl_const(SrcPos pos) {
    const char *name = parse_name();
    Typespec *type = ((void*)0);
    if (match_token(TOKEN_COLON)) {
        type = parse_type();
    }
    expect_token(TOKEN_ASSIGN);
    Expr *expr = parse_expr();
    expect_token(TOKEN_SEMICOLON);
    return new_decl_const(pos, name, type, expr);
}
