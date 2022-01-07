
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;
typedef int Buffer ;


 int buf_body (int *) ;
 int buf_printf (int *,char*,int ) ;
 int * lex_string (int ) ;
 int * make_buffer () ;
 int tok2s (int *) ;

__attribute__((used)) static Token *glue_tokens(Token *t, Token *u) {
    Buffer *b = make_buffer();
    buf_printf(b, "%s", tok2s(t));
    buf_printf(b, "%s", tok2s(u));
    Token *r = lex_string(buf_body(b));
    return r;
}
