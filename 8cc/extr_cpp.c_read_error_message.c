
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; scalar_t__ space; } ;
typedef TYPE_1__ Token ;
typedef int Buffer ;


 scalar_t__ TNEWLINE ;
 char* buf_body (int *) ;
 scalar_t__ buf_len (int *) ;
 int buf_printf (int *,char*,int ) ;
 int buf_write (int *,char) ;
 TYPE_1__* lex () ;
 int * make_buffer () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static char *read_error_message() {
    Buffer *b = make_buffer();
    for (;;) {
        Token *tok = lex();
        if (tok->kind == TNEWLINE)
            return buf_body(b);
        if (buf_len(b) != 0 && tok->space)
            buf_write(b, ' ');
        buf_printf(b, "%s", tok2s(tok));
    }
}
