
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int enc; scalar_t__ slen; int sval; } ;
typedef TYPE_1__ Token ;
struct TYPE_8__ {scalar_t__ kind; } ;
typedef int Buffer ;


 int ENC_NONE ;
 scalar_t__ TSTRING ;
 int buf_append (int *,int ,scalar_t__) ;
 int buf_body (int *) ;
 scalar_t__ buf_len (int *) ;
 int buf_write (int *,char) ;
 int errort (TYPE_1__*,char*,int ) ;
 int * make_buffer () ;
 TYPE_4__* peek () ;
 TYPE_1__* read_token () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void concatenate_string(Token *tok) {
    int enc = tok->enc;
    Buffer *b = make_buffer();
    buf_append(b, tok->sval, tok->slen - 1);
    while (peek()->kind == TSTRING) {
        Token *tok2 = read_token();
        buf_append(b, tok2->sval, tok2->slen - 1);
        int enc2 = tok2->enc;
        if (enc != ENC_NONE && enc2 != ENC_NONE && enc != enc2)
            errort(tok2, "unsupported non-standard concatenation of string literals: %s", tok2s(tok2));
        if (enc == ENC_NONE)
            enc = enc2;
    }
    buf_write(b, '\0');
    tok->sval = buf_body(b);
    tok->slen = buf_len(b);
    tok->enc = enc;
}
