
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 TYPE_1__* get () ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static char *read_rectype_tag() {
    Token *tok = get();
    if (tok->kind == TIDENT)
        return tok->sval;
    unget_token(tok);
    return ((void*)0);
}
