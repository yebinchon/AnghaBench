
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 scalar_t__ STMT_INIT ;
 int TOKEN_LBRACE ;
 int TOKEN_LPAREN ;
 int TOKEN_RPAREN ;
 int TOKEN_SEMICOLON ;
 int error_here (char*) ;
 int expect_token (int ) ;
 int is_token (int ) ;
 scalar_t__ match_token (int ) ;
 TYPE_1__* new_stmt_for (int ,TYPE_1__*,int *,TYPE_1__*,int ) ;
 int * parse_expr () ;
 TYPE_1__* parse_simple_stmt () ;
 int parse_stmt_block () ;

Stmt *parse_stmt_for(SrcPos pos) {
    Stmt *init = ((void*)0);
    Expr *cond = ((void*)0);
    Stmt *next = ((void*)0);
    if (!is_token(TOKEN_LBRACE)) {
        expect_token(TOKEN_LPAREN);
        if (!is_token(TOKEN_SEMICOLON)) {
            init = parse_simple_stmt();
        }
        if (match_token(TOKEN_SEMICOLON)) {
            if (!is_token(TOKEN_SEMICOLON)) {
                cond = parse_expr();
            }
            if (match_token(TOKEN_SEMICOLON)) {
                if (!is_token(TOKEN_RPAREN)) {
                    next = parse_simple_stmt();
                    if (next->kind == STMT_INIT) {
                        error_here("Init statements not allowed in for-statement's next clause");
                    }
                }
            }
        }
        expect_token(TOKEN_RPAREN);
    }
    return new_stmt_for(pos, init, cond, next, parse_stmt_block());
}
