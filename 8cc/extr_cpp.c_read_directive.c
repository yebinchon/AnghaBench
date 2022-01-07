
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ kind; char* sval; int file; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TIDENT ;
 scalar_t__ TNEWLINE ;
 scalar_t__ TNUMBER ;
 int errort (TYPE_1__*,char*,int ) ;
 TYPE_1__* lex () ;
 int read_define () ;
 int read_elif (TYPE_1__*) ;
 int read_else (TYPE_1__*) ;
 int read_endif (TYPE_1__*) ;
 int read_error (TYPE_1__*) ;
 int read_if () ;
 int read_ifdef () ;
 int read_ifndef () ;
 int read_include (TYPE_1__*,int ,int) ;
 int read_include_next (TYPE_1__*,int ) ;
 int read_line () ;
 int read_linemarker (TYPE_1__*) ;
 int read_pragma () ;
 int read_undef () ;
 int read_warning (TYPE_1__*) ;
 int strcmp (char*,char*) ;
 int tok2s (TYPE_1__*) ;

__attribute__((used)) static void read_directive(Token *hash) {
    Token *tok = lex();
    if (tok->kind == TNEWLINE)
        return;
    if (tok->kind == TNUMBER) {
        read_linemarker(tok);
        return;
    }
    if (tok->kind != TIDENT)
        goto err;
    char *s = tok->sval;
    if (!strcmp(s, "define")) read_define();
    else if (!strcmp(s, "elif")) read_elif(hash);
    else if (!strcmp(s, "else")) read_else(hash);
    else if (!strcmp(s, "endif")) read_endif(hash);
    else if (!strcmp(s, "error")) read_error(hash);
    else if (!strcmp(s, "if")) read_if();
    else if (!strcmp(s, "ifdef")) read_ifdef();
    else if (!strcmp(s, "ifndef")) read_ifndef();
    else if (!strcmp(s, "import")) read_include(hash, tok->file, 1);
    else if (!strcmp(s, "include")) read_include(hash, tok->file, 0);
    else if (!strcmp(s, "include_next")) read_include_next(hash, tok->file);
    else if (!strcmp(s, "line")) read_line();
    else if (!strcmp(s, "pragma")) read_pragma();
    else if (!strcmp(s, "undef")) read_undef();
    else if (!strcmp(s, "warning")) read_warning(hash);
    else goto err;
    return;

  err:
    errort(hash, "unsupported preprocessor directive: %s", tok2s(tok));
}
