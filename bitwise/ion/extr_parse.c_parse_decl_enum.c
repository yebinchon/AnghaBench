
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Typespec ;
typedef int SrcPos ;
typedef int EnumItem ;
typedef int Decl ;


 int TOKEN_ASSIGN ;
 int TOKEN_COMMA ;
 int TOKEN_LBRACE ;
 int TOKEN_NAME ;
 int TOKEN_RBRACE ;
 int buf_len (int *) ;
 int buf_push (int *,int ) ;
 int expect_token (int ) ;
 scalar_t__ is_token (int ) ;
 scalar_t__ match_token (int ) ;
 int * new_decl_enum (int ,char const*,int *,int *,int ) ;
 int parse_decl_enum_item () ;
 char* parse_name () ;
 int * parse_type () ;

Decl *parse_decl_enum(SrcPos pos) {
    const char *name = ((void*)0);
    if (is_token(TOKEN_NAME)) {
        name = parse_name();
    }
    Typespec *type = ((void*)0);
    if (match_token(TOKEN_ASSIGN)) {
        type = parse_type();
    }
    expect_token(TOKEN_LBRACE);
    EnumItem *items = ((void*)0);
    while (!is_token(TOKEN_RBRACE)) {
        buf_push(items, parse_decl_enum_item());
        if (!match_token(TOKEN_COMMA)) {
            break;
        }
    }
    expect_token(TOKEN_RBRACE);
    return new_decl_enum(pos, name, type, items, buf_len(items));
}
