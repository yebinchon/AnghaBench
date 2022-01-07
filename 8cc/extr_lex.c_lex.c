
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_7__ {scalar_t__ kind; int space; int bol; } ;
typedef TYPE_1__ Token ;
struct TYPE_8__ {int column; } ;


 scalar_t__ TSPACE ;
 int * buffers ;
 TYPE_6__* current_file () ;
 TYPE_1__* do_read_token () ;
 TYPE_1__* eof_token ;
 int vec_len (int *) ;
 TYPE_1__* vec_pop (int *) ;
 int * vec_tail (int *) ;

Token *lex() {
    Vector *buf = vec_tail(buffers);
    if (vec_len(buf) > 0)
        return vec_pop(buf);
    if (vec_len(buffers) > 1)
        return eof_token;
    bool bol = (current_file()->column == 1);
    Token *tok = do_read_token();
    while (tok->kind == TSPACE) {
        tok = do_read_token();
        tok->space = 1;
    }
    tok->bol = bol;
    return tok;
}
