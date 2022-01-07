
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; char* sval; int enc; scalar_t__ slen; } ;
typedef TYPE_1__ Token ;


 int ENC_NONE ;
 TYPE_1__* copy_token (TYPE_1__*) ;
 scalar_t__ strlen (char*) ;
 int unget_token (TYPE_1__*) ;

__attribute__((used)) static void make_token_pushback(Token *tmpl, int kind, char *sval) {
    Token *tok = copy_token(tmpl);
    tok->kind = kind;
    tok->sval = sval;
    tok->slen = strlen(sval) + 1;
    tok->enc = ENC_NONE;
    unget_token(tok);
}
