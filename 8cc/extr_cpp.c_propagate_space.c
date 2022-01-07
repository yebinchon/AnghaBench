
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_5__ {int space; } ;
typedef TYPE_1__ Token ;


 TYPE_1__* copy_token (int ) ;
 int vec_head (int *) ;
 scalar_t__ vec_len (int *) ;
 int vec_set (int *,int ,TYPE_1__*) ;

__attribute__((used)) static void propagate_space(Vector *tokens, Token *tmpl) {
    if (vec_len(tokens) == 0)
        return;
    Token *tok = copy_token(vec_head(tokens));
    tok->space = tmpl->space;
    vec_set(tokens, 0, tok);
}
