
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_8__ {int enc; scalar_t__ slen; int sval; int kind; scalar_t__ space; } ;
typedef TYPE_1__ Token ;
typedef int Buffer ;


 int ENC_NONE ;
 int TSTRING ;
 int buf_body (int *) ;
 scalar_t__ buf_len (int *) ;
 int buf_printf (int *,char*,...) ;
 int buf_write (int *,char) ;
 TYPE_1__* copy_token (TYPE_1__*) ;
 int * make_buffer () ;
 int tok2s (TYPE_1__*) ;
 TYPE_1__* vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static Token *stringize(Token *tmpl, Vector *args) {
    Buffer *b = make_buffer();
    for (int i = 0; i < vec_len(args); i++) {
        Token *tok = vec_get(args, i);
        if (buf_len(b) && tok->space)
            buf_printf(b, " ");
        buf_printf(b, "%s", tok2s(tok));
    }
    buf_write(b, '\0');
    Token *r = copy_token(tmpl);
    r->kind = TSTRING;
    r->sval = buf_body(b);
    r->slen = buf_len(b);
    r->enc = ENC_NONE;
    return r;
}
