
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; int id; int sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 scalar_t__ TKEYWORD ;
 TYPE_1__* copy_token (TYPE_1__*) ;
 int keywords ;
 int map_get (int ,int ) ;

__attribute__((used)) static Token *maybe_convert_keyword(Token *tok) {
    if (tok->kind != TIDENT)
        return tok;
    int id = (intptr_t)map_get(keywords, tok->sval);
    if (!id)
        return tok;
    Token *r = copy_token(tok);
    r->kind = TKEYWORD;
    r->id = id;
    return r;
}
