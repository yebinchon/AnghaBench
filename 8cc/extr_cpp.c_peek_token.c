
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int * read_token () ;
 int unget_token (int *) ;

Token *peek_token() {
    Token *r = read_token();
    unget_token(r);
    return r;
}
