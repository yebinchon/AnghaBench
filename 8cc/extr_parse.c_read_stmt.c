
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ kind; int id; } ;
typedef TYPE_1__ Token ;
typedef int Node ;
 scalar_t__ TIDENT ;
 scalar_t__ TKEYWORD ;
 int expect (char) ;
 TYPE_1__* get () ;
 scalar_t__ next_token (char) ;
 int * read_break_stmt (TYPE_1__*) ;
 int * read_case_label (TYPE_1__*) ;
 int * read_compound_stmt () ;
 int * read_continue_stmt (TYPE_1__*) ;
 int * read_default_label (TYPE_1__*) ;
 int * read_do_stmt () ;
 int * read_expr_opt () ;
 int * read_for_stmt () ;
 int * read_goto_stmt () ;
 int * read_if_stmt () ;
 int * read_label (TYPE_1__*) ;
 int * read_return_stmt () ;
 int * read_switch_stmt () ;
 int * read_while_stmt () ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static Node *read_stmt() {
    Token *tok = get();
    if (tok->kind == TKEYWORD) {
        switch (tok->id) {
        case '{': return read_compound_stmt();
        case 131: return read_if_stmt();
        case 133: return read_for_stmt();
        case 128: return read_while_stmt();
        case 134: return read_do_stmt();
        case 130: return read_return_stmt();
        case 129: return read_switch_stmt();
        case 137: return read_case_label(tok);
        case 135: return read_default_label(tok);
        case 138: return read_break_stmt(tok);
        case 136: return read_continue_stmt(tok);
        case 132: return read_goto_stmt();
        }
    }
    if (tok->kind == TIDENT && next_token(':'))
        return read_label(tok);
    unget_token(tok);
    Node *r = read_expr_opt();
    expect(';');
    return r;
}
