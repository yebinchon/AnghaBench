
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_vararg; int position; int space; int bol; int * hideset; int kind; } ;
typedef TYPE_1__ Token ;


 int TMACRO_PARAM ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static Token *make_macro_token(int position, bool is_vararg) {
    Token *r = malloc(sizeof(Token));
    r->kind = TMACRO_PARAM;
    r->is_vararg = is_vararg;
    r->hideset = ((void*)0);
    r->position = position;
    r->space = 0;
    r->bol = 0;
    return r;
}
