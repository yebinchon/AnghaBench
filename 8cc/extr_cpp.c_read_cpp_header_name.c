
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_8__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_1__ Token ;


 scalar_t__ TNEWLINE ;
 scalar_t__ TSTRING ;
 int errort (TYPE_1__*,char*,...) ;
 scalar_t__ is_keyword (TYPE_1__*,char) ;
 char* join_paths (int *) ;
 int * make_vector () ;
 TYPE_1__* read_expand_newline () ;
 char* read_header_file_name (int*) ;
 int tok2s (TYPE_1__*) ;
 int vec_push (int *,TYPE_1__*) ;

__attribute__((used)) static char *read_cpp_header_name(Token *hash, bool *std) {

    char *path = read_header_file_name(std);
    if (path)
        return path;




    Token *tok = read_expand_newline();
    if (tok->kind == TNEWLINE)
        errort(hash, "expected filename, but got newline");
    if (tok->kind == TSTRING) {
        *std = 0;
        return tok->sval;
    }
    if (!is_keyword(tok, '<'))
        errort(tok, "< expected, but got %s", tok2s(tok));
    Vector *tokens = make_vector();
    for (;;) {
        Token *tok = read_expand_newline();
        if (tok->kind == TNEWLINE)
            errort(hash, "premature end of header name");
        if (is_keyword(tok, '>'))
            break;
        vec_push(tokens, tok);
    }
    *std = 1;
    return join_paths(tokens);
}
