
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Decls ;
typedef int Decl ;


 int TOKEN_EOF ;
 int buf_len (int **) ;
 int buf_push (int **,int ) ;
 int is_token (int ) ;
 int * new_decls (int **,int ) ;
 int parse_decl () ;

Decls *parse_decls(void) {
    Decl **decls = ((void*)0);
    while (!is_token(TOKEN_EOF)) {
        buf_push(decls, parse_decl());
    }
    return new_decls(decls, buf_len(decls));
}
