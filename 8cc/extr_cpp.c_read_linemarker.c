
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* sval; scalar_t__ kind; } ;
typedef TYPE_1__ Token ;
struct TYPE_9__ {int line; char* name; } ;
typedef TYPE_2__ File ;


 scalar_t__ TNEWLINE ;
 scalar_t__ TSTRING ;
 int atoi (char*) ;
 TYPE_2__* current_file () ;
 int errort (TYPE_1__*,char*,int ) ;
 int is_digit_sequence (char*) ;
 TYPE_1__* lex () ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void read_linemarker(Token *tok) {
    if (!is_digit_sequence(tok->sval))
        errort(tok, "line number expected, but got %s", tok2s(tok));
    int line = atoi(tok->sval);
    tok = lex();
    if (tok->kind != TSTRING)
        errort(tok, "filename expected, but got %s", tok2s(tok));
    char *filename = tok->sval;
    do {
        tok = lex();
    } while (tok->kind != TNEWLINE);
    File *file = current_file();
    file->line = line;
    file->name = filename;
}
