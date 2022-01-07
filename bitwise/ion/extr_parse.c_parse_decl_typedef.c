
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Typespec ;
typedef int SrcPos ;
typedef int Decl ;


 int TOKEN_ASSIGN ;
 int TOKEN_SEMICOLON ;
 int expect_token (int ) ;
 int * new_decl_typedef (int ,char const*,int *) ;
 char* parse_name () ;
 int * parse_type () ;

Decl *parse_decl_typedef(SrcPos pos) {
    const char *name = parse_name();
    expect_token(TOKEN_ASSIGN);
    Typespec *type = parse_type();
    expect_token(TOKEN_SEMICOLON);
    return new_decl_typedef(pos, name, type);
}
