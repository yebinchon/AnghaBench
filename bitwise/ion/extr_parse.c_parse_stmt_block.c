
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pos; } ;
typedef int StmtList ;
typedef int Stmt ;
typedef int SrcPos ;


 int TOKEN_LBRACE ;
 int TOKEN_RBRACE ;
 int buf_len (int **) ;
 int buf_push (int **,int ) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 int is_token_eof () ;
 int new_stmt_list (int ,int **,int ) ;
 int parse_stmt () ;
 TYPE_1__ token ;

StmtList parse_stmt_block(void) {
    SrcPos pos = token.pos;
    expect_token(TOKEN_LBRACE);
    Stmt **stmts = ((void*)0);
    while (!is_token_eof() && !is_token(TOKEN_RBRACE)) {
        buf_push(stmts, parse_stmt());
    }
    expect_token(TOKEN_RBRACE);
    return new_stmt_list(pos, stmts, buf_len(stmts));
}
