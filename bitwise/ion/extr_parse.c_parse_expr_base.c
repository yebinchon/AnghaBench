
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TokenKind ;
struct TYPE_2__ {char* name; int kind; int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_COMMA ;
 int TOKEN_DEC ;
 int TOKEN_DOT ;
 int TOKEN_INC ;
 int TOKEN_LBRACKET ;
 int TOKEN_LPAREN ;
 int TOKEN_NAME ;
 int TOKEN_RBRACKET ;
 int TOKEN_RPAREN ;
 int assert (int) ;
 int buf_len (int **) ;
 int buf_push (int **,int *) ;
 int expect_token (int ) ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_expr_call (int ,int *,int **,int ) ;
 int * new_expr_field (int ,int *,char const*) ;
 int * new_expr_index (int ,int *,int *) ;
 int * new_expr_modify (int ,int ,int,int *) ;
 int next_token () ;
 int * parse_expr () ;
 int * parse_expr_operand () ;
 TYPE_1__ token ;

Expr *parse_expr_base(void) {
    Expr *expr = parse_expr_operand();
    while (is_token(TOKEN_LPAREN) || is_token(TOKEN_LBRACKET) || is_token(TOKEN_DOT) || is_token(TOKEN_INC) || is_token(TOKEN_DEC)) {
        SrcPos pos = token.pos;
        if (match_token(TOKEN_LPAREN)) {
            Expr **args = ((void*)0);
            if (!is_token(TOKEN_RPAREN)) {
                buf_push(args, parse_expr());
                while (match_token(TOKEN_COMMA)) {
                    buf_push(args, parse_expr());
                }
            }
            expect_token(TOKEN_RPAREN);
            expr = new_expr_call(pos, expr, args, buf_len(args));
        } else if (match_token(TOKEN_LBRACKET)) {
            Expr *index = parse_expr();
            expect_token(TOKEN_RBRACKET);
            expr = new_expr_index(pos, expr, index);
        } else if (is_token(TOKEN_DOT)) {
            next_token();
            const char *field = token.name;
            expect_token(TOKEN_NAME);
            expr = new_expr_field(pos, expr, field);
        } else {
            assert(is_token(TOKEN_INC) || is_token(TOKEN_DEC));
            TokenKind op = token.kind;
            next_token();
            expr = new_expr_modify(pos, op, 1, expr);
        }
    }
    return expr;
}
