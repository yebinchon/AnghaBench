
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_5__ {scalar_t__ kind; char const* name; int pos; } ;
typedef int Stmt ;
typedef TYPE_1__ Expr ;


 scalar_t__ EXPR_NAME ;
 int TOKEN_ASSIGN ;
 int TOKEN_COLON ;
 int TOKEN_COLON_ASSIGN ;
 int fatal_error_here (char*) ;
 int match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_stmt_init (int ,char const*,int *,TYPE_1__*,int) ;
 TYPE_1__* parse_expr () ;
 int * parse_type () ;
 int undef_keyword ;

Stmt *parse_init_stmt(Expr *left) {
    if (match_token(TOKEN_COLON_ASSIGN)) {
        if (left->kind != EXPR_NAME) {
            fatal_error_here(":= must be preceded by a name");
            return ((void*)0);
        }
        return new_stmt_init(left->pos, left->name, ((void*)0), parse_expr(), 0);
    } else if (match_token(TOKEN_COLON)) {
        if (left->kind != EXPR_NAME) {
            fatal_error_here(": must be preceded by a name");
            return ((void*)0);
        }
        const char *name = left->name;
        Typespec *type = parse_type();
        Expr *expr = ((void*)0);
        bool is_undef = 0;
        if (match_token(TOKEN_ASSIGN)) {
            is_undef = match_keyword(undef_keyword);
            if (!is_undef) {
                expr = parse_expr();
            }
        }
        return new_stmt_init(left->pos, name, type, expr, is_undef);
    } else {
        return ((void*)0);
    }
}
