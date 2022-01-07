
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Token ;


 int glue_tokens (int *,int *) ;
 int * vec_pop (int *) ;
 int vec_push (int *,int ) ;

__attribute__((used)) static void glue_push(Vector *tokens, Token *tok) {
    Token *last = vec_pop(tokens);
    vec_push(tokens, glue_tokens(last, tok));
}
