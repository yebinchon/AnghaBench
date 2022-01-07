
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SwitchCase ;
typedef int Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_LBRACE ;
 int TOKEN_RBRACE ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 int is_token_eof () ;
 int * new_stmt_switch (int ,int *,int *,int ) ;
 int * parse_paren_expr () ;
 int parse_stmt_switch_case () ;

Stmt *parse_stmt_switch(SrcPos pos) {
    Expr *expr = parse_paren_expr();
    SwitchCase *cases = ((void*)0);
    expect_token(TOKEN_LBRACE);
    while (!is_token_eof() && !is_token(TOKEN_RBRACE)) {
        buf_push(cases, parse_stmt_switch_case());
    }
    expect_token(TOKEN_RBRACE);
    return new_stmt_switch(pos, expr, cases, buf_len(cases));
}
