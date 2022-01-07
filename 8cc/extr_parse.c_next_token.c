
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int * get () ;
 scalar_t__ is_keyword (int *,int) ;
 int unget_token (int *) ;

__attribute__((used)) static bool next_token(int kind) {
    Token *tok = get();
    if (is_keyword(tok, kind))
        return 1;
    unget_token(tok);
    return 0;
}
