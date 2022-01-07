
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int pos; } ;
struct TYPE_17__ {int notes; } ;
typedef TYPE_1__ Stmt ;
typedef int SrcPos ;
typedef int Notes ;
typedef int Note ;
typedef int Expr ;


 int TOKEN_COLON ;
 int TOKEN_LBRACE ;
 int TOKEN_POUND ;
 int TOKEN_SEMICOLON ;
 int break_keyword ;
 int continue_keyword ;
 int do_keyword ;
 int expect_token (int ) ;
 int for_keyword ;
 int goto_keyword ;
 int if_keyword ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 TYPE_1__* new_stmt_block (int ,int ) ;
 TYPE_1__* new_stmt_break (int ) ;
 TYPE_1__* new_stmt_continue (int ) ;
 TYPE_1__* new_stmt_goto (int ,int ) ;
 TYPE_1__* new_stmt_label (int ,int ) ;
 TYPE_1__* new_stmt_note (int ,int ) ;
 TYPE_1__* new_stmt_return (int ,int *) ;
 int * parse_expr () ;
 int parse_name () ;
 int parse_note () ;
 int parse_notes () ;
 TYPE_1__* parse_simple_stmt () ;
 int parse_stmt_block () ;
 TYPE_1__* parse_stmt_do_while (int ) ;
 TYPE_1__* parse_stmt_for (int ) ;
 TYPE_1__* parse_stmt_if (int ) ;
 TYPE_1__* parse_stmt_switch (int ) ;
 TYPE_1__* parse_stmt_while (int ) ;
 int return_keyword ;
 int switch_keyword ;
 TYPE_2__ token ;
 int while_keyword ;

Stmt *parse_stmt(void) {
    Notes notes = parse_notes();
    SrcPos pos = token.pos;
    Stmt *stmt = ((void*)0);
    if (match_keyword(if_keyword)) {
        stmt = parse_stmt_if(pos);
    } else if (match_keyword(while_keyword)) {
        stmt = parse_stmt_while(pos);
    } else if (match_keyword(do_keyword)) {
        stmt = parse_stmt_do_while(pos);
    } else if (match_keyword(for_keyword)) {
        stmt = parse_stmt_for(pos);
    } else if (match_keyword(switch_keyword)) {
        stmt = parse_stmt_switch(pos);
    } else if (is_token(TOKEN_LBRACE)) {
        stmt = new_stmt_block(pos, parse_stmt_block());
    } else if (match_keyword(break_keyword)) {
        expect_token(TOKEN_SEMICOLON);
        stmt = new_stmt_break(pos);
    } else if (match_keyword(continue_keyword)) {
        expect_token(TOKEN_SEMICOLON);
        stmt = new_stmt_continue(pos);
    } else if (match_keyword(return_keyword)) {
        Expr *expr = ((void*)0);
        if (!is_token(TOKEN_SEMICOLON)) {
            expr = parse_expr();
        }
        expect_token(TOKEN_SEMICOLON);
        stmt = new_stmt_return(pos, expr);
    } else if (match_token(TOKEN_POUND)) {
        Note note = parse_note();
        expect_token(TOKEN_SEMICOLON);
        stmt = new_stmt_note(pos, note);
    } else if (match_token(TOKEN_COLON)) {
        stmt = new_stmt_label(pos, parse_name());
    } else if (match_keyword(goto_keyword)) {
        stmt = new_stmt_goto(pos, parse_name());
        expect_token(TOKEN_SEMICOLON);
    } else {
        stmt = parse_simple_stmt();
        expect_token(TOKEN_SEMICOLON);
    }
    stmt->notes = notes;
    return stmt;
}
