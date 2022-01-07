
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 scalar_t__ is_keyword (int *,int) ;
 int * lex () ;
 int unget_token (int *) ;

__attribute__((used)) static bool next(int id) {
    Token *tok = lex();
    if (is_keyword(tok, id))
        return 1;
    unget_token(tok);
    return 0;
}
