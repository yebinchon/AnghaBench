
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
typedef int TokenSuffix ;
typedef int TokenMod ;
struct TYPE_2__ {unsigned long long int_val; char* start; char* end; double float_val; char* str_val; char* name; int mod; int suffix; int pos; } ;
typedef int SrcPos ;
typedef int Expr ;


 int TOKEN_COLON ;
 int TOKEN_COMMA ;
 int TOKEN_FLOAT ;
 int TOKEN_INT ;
 int TOKEN_LBRACE ;
 int TOKEN_LPAREN ;
 int TOKEN_NAME ;
 int TOKEN_RPAREN ;
 int TOKEN_STR ;
 int alignof_keyword ;
 int expect_token (int ) ;
 int fatal_error_here (char*,int ) ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_expr_alignof_expr (int ,int *) ;
 int * new_expr_alignof_type (int ,int *) ;
 int * new_expr_cast (int ,int *,int ) ;
 int * new_expr_float (int ,char const*,char const*,double,int ) ;
 int * new_expr_int (int ,unsigned long long,int ,int ) ;
 int * new_expr_name (int ,char const*) ;
 int * new_expr_offsetof (int ,int *,char const*) ;
 int * new_expr_paren (int ,int *) ;
 int * new_expr_sizeof_expr (int ,int *) ;
 int * new_expr_sizeof_type (int ,int *) ;
 int * new_expr_str (int ,char const*,int ) ;
 int * new_expr_typeof_expr (int ,int *) ;
 int * new_expr_typeof_type (int ,int *) ;
 int new_keyword ;
 int * new_typespec_name (int ,char const**,int) ;
 int next_token () ;
 int offsetof_keyword ;
 int * parse_expr () ;
 int * parse_expr_compound (int *) ;
 int * parse_expr_new (int ) ;
 int parse_expr_unary () ;
 char* parse_name () ;
 int * parse_type () ;
 int sizeof_keyword ;
 TYPE_1__ token ;
 int token_info () ;
 int typeof_keyword ;

Expr *parse_expr_operand(void) {
    SrcPos pos = token.pos;
    if (is_token(TOKEN_INT)) {
        unsigned long long val = token.int_val;
        TokenMod mod = token.mod;
        TokenSuffix suffix = token.suffix;
        next_token();
        return new_expr_int(pos, val, mod, suffix);
    } else if (is_token(TOKEN_FLOAT)) {
        const char *start = token.start;
        const char *end = token.end;
        double val = token.float_val;
        TokenSuffix suffix = token.suffix;
        next_token();
        return new_expr_float(pos, start, end, val, suffix);
    } else if (is_token(TOKEN_STR)) {
        const char *val = token.str_val;
        TokenMod mod = token.mod;
        next_token();
        return new_expr_str(pos, val, mod);
    } else if (is_token(TOKEN_NAME)) {
        const char *name = token.name;
        next_token();
        if (is_token(TOKEN_LBRACE)) {
            return parse_expr_compound(new_typespec_name(pos, &name, 1));
        } else {
            return new_expr_name(pos, name);
        }
    } else if (match_keyword(new_keyword)) {
        return parse_expr_new(pos);
    } else if (match_keyword(sizeof_keyword)) {
        expect_token(TOKEN_LPAREN);
        if (match_token(TOKEN_COLON)) {
            Typespec *type = parse_type();
            expect_token(TOKEN_RPAREN);
            return new_expr_sizeof_type(pos, type);
        } else {
            Expr *expr = parse_expr();
            expect_token(TOKEN_RPAREN);
            return new_expr_sizeof_expr(pos, expr);
        }
    } else if (match_keyword(alignof_keyword)) {
        expect_token(TOKEN_LPAREN);
        if (match_token(TOKEN_COLON)) {
            Typespec *type = parse_type();
            expect_token(TOKEN_RPAREN);
            return new_expr_alignof_type(pos, type);
        } else {
            Expr *expr = parse_expr();
            expect_token(TOKEN_RPAREN);
            return new_expr_alignof_expr(pos, expr);
        }
    } else if (match_keyword(typeof_keyword)) {
        expect_token(TOKEN_LPAREN);
        if (match_token(TOKEN_COLON)) {
            Typespec *type = parse_type();
            expect_token(TOKEN_RPAREN);
            return new_expr_typeof_type(pos, type);
        } else {
            Expr *expr = parse_expr();
            expect_token(TOKEN_RPAREN);
            return new_expr_typeof_expr(pos, expr);
        }
    } else if (match_keyword(offsetof_keyword)) {
        expect_token(TOKEN_LPAREN);
        Typespec *type = parse_type();
        expect_token(TOKEN_COMMA);
        const char *name = parse_name();
        expect_token(TOKEN_RPAREN);
        return new_expr_offsetof(pos, type, name);
    } else if (is_token(TOKEN_LBRACE)) {
        return parse_expr_compound(((void*)0));
    } else if (match_token(TOKEN_LPAREN)) {
        if (match_token(TOKEN_COLON)) {
            Typespec *type = parse_type();
            expect_token(TOKEN_RPAREN);
            if (is_token(TOKEN_LBRACE)) {
                return parse_expr_compound(type);
            } else {
                return new_expr_cast(pos, type, parse_expr_unary());
            }
        } else {
            Expr *expr = parse_expr();
            expect_token(TOKEN_RPAREN);
            return new_expr_paren(pos, expr);
        }
    } else {
        fatal_error_here("Unexpected token %s in expression", token_info());
        return ((void*)0);
    }
}
