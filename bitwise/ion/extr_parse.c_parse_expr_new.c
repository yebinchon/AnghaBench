
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_LBRACKET ;
 int TOKEN_LPAREN ;
 int TOKEN_RBRACKET ;
 int TOKEN_RPAREN ;
 int expect_token (int ) ;
 int match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_expr_new (int ,int *,int *,int *) ;
 int * parse_expr () ;
 int undef_keyword ;

Expr *parse_expr_new(SrcPos pos) {
    Expr *alloc = ((void*)0);
    if (match_token(TOKEN_LPAREN)) {
        alloc = parse_expr();
        expect_token(TOKEN_RPAREN);
    }
    Expr *len = ((void*)0);
    if (match_token(TOKEN_LBRACKET)) {
        len = parse_expr();
        expect_token(TOKEN_RBRACKET);
    }
    Expr *arg = ((void*)0);
    if (!match_keyword(undef_keyword)) {
        arg = parse_expr();
    }
    return new_expr_new(pos, alloc, len, arg);
}
