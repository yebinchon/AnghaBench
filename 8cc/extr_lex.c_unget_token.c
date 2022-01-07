
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TEOF ;
 int buffers ;
 int vec_push (int *,TYPE_1__*) ;
 int * vec_tail (int ) ;

void unget_token(Token *tok) {
    if (tok->kind == TEOF)
        return;
    Vector *buf = vec_tail(buffers);
    vec_push(buf, tok);
}
