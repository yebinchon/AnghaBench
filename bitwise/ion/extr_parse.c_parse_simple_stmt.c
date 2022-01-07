
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_2__ {int kind; int pos; } ;
typedef int Stmt ;
typedef int SrcPos ;
typedef int Expr ;


 scalar_t__ is_assign_op () ;
 int * new_stmt_assign (int ,int ,int *,int *) ;
 int * new_stmt_expr (int ,int *) ;
 int next_token () ;
 int * parse_expr () ;
 int * parse_init_stmt (int *) ;
 TYPE_1__ token ;

Stmt *parse_simple_stmt(void) {
    SrcPos pos = token.pos;
    Expr *expr = parse_expr();
    Stmt *stmt = parse_init_stmt(expr);
    if (!stmt) {
        if (is_assign_op()) {
            TokenKind op = token.kind;
            next_token();
            stmt = new_stmt_assign(pos, op, expr, parse_expr());
        } else {
            stmt = new_stmt_expr(pos, expr);
        }
    }
    return stmt;
}
