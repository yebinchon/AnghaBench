
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StmtList ;
typedef int Stmt ;
typedef int SrcPos ;


 int TOKEN_SEMICOLON ;
 int expect_token (int ) ;
 int fatal_error_here (char*) ;
 int match_keyword (int ) ;
 int * new_stmt_do_while (int ,int ,int ) ;
 int parse_paren_expr () ;
 int parse_stmt_block () ;
 int while_keyword ;

Stmt *parse_stmt_do_while(SrcPos pos) {
    StmtList block = parse_stmt_block();
    if (!match_keyword(while_keyword)) {
        fatal_error_here("Expected 'while' after 'do' block");
        return ((void*)0);
    }
    Stmt *stmt = new_stmt_do_while(pos, parse_paren_expr(), block);
    expect_token(TOKEN_SEMICOLON);
    return stmt;
}
