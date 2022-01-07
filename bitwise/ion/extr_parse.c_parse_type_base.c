
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int Typespec ;
struct TYPE_2__ {int name; int pos; } ;
typedef int SrcPos ;


 int TOKEN_DOT ;
 int TOKEN_LBRACE ;
 int TOKEN_LPAREN ;
 int TOKEN_NAME ;
 int TOKEN_RPAREN ;
 int buf_len (char const**) ;
 int buf_push (char const**,int ) ;
 int expect_token (int ) ;
 int fatal_error_here (char*,int ) ;
 int func_keyword ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_keyword (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_typespec_name (int ,char const**,int ) ;
 int next_token () ;
 int parse_name () ;
 int * parse_type () ;
 int * parse_type_func () ;
 int * parse_type_tuple () ;
 TYPE_1__ token ;
 int token_info () ;

Typespec *parse_type_base(void) {
    if (is_token(TOKEN_NAME)) {
        SrcPos pos = token.pos;
        const char **names = ((void*)0);
        buf_push(names, token.name);
        next_token();
        while (match_token(TOKEN_DOT)) {
            buf_push(names, parse_name());
        }
        return new_typespec_name(pos, names, buf_len(names));
    } else if (match_keyword(func_keyword)) {
        return parse_type_func();
    } else if (match_token(TOKEN_LPAREN)) {
        Typespec *type = parse_type();
        expect_token(TOKEN_RPAREN);
        return type;
    } else if (match_token(TOKEN_LBRACE)) {
        return parse_type_tuple();
    } else {
        fatal_error_here("Unexpected token %s in type", token_info());
        return ((void*)0);
    }
}
