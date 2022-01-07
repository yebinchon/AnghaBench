
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_11__ {int is_struct; scalar_t__ offset; int fields; } ;
typedef TYPE_1__ Type ;
struct TYPE_12__ {scalar_t__ kind; char* sval; } ;
typedef TYPE_2__ Token ;


 scalar_t__ TIDENT ;
 TYPE_1__* dict_get (int ,char*) ;
 int * dict_keys (int ) ;
 int errort (TYPE_2__*,char*,int ) ;
 TYPE_2__* get () ;
 scalar_t__ is_keyword (TYPE_2__*,char) ;
 int maybe_read_brace () ;
 int maybe_skip_comma () ;
 int read_initializer_elem (int *,TYPE_1__*,scalar_t__,int) ;
 int skip_to_brace () ;
 scalar_t__ strcmp (char*,char*) ;
 int tok2s (TYPE_2__*) ;
 int unget_token (TYPE_2__*) ;
 char* vec_get (int *,int ) ;
 int vec_len (int *) ;

__attribute__((used)) static void read_struct_initializer_sub(Vector *inits, Type *ty, int off, bool designated) {
    bool has_brace = maybe_read_brace();
    Vector *keys = dict_keys(ty->fields);
    int i = 0;
    for (;;) {
        Token *tok = get();
        if (is_keyword(tok, '}')) {
            if (!has_brace)
                unget_token(tok);
            return;
        }
        char *fieldname;
        Type *fieldtype;
        if ((is_keyword(tok, '.') || is_keyword(tok, '[')) && !has_brace && !designated) {
            unget_token(tok);
            return;
        }
        if (is_keyword(tok, '.')) {
            tok = get();
            if (!tok || tok->kind != TIDENT)
                errort(tok, "malformed desginated initializer: %s", tok2s(tok));
            fieldname = tok->sval;
            fieldtype = dict_get(ty->fields, fieldname);
            if (!fieldtype)
                errort(tok, "field does not exist: %s", tok2s(tok));
            keys = dict_keys(ty->fields);
            i = 0;
            while (i < vec_len(keys)) {
                char *s = vec_get(keys, i++);
                if (strcmp(fieldname, s) == 0)
                    break;
            }
            designated = 1;
        } else {
            unget_token(tok);
            if (i == vec_len(keys))
                break;
            fieldname = vec_get(keys, i++);
            fieldtype = dict_get(ty->fields, fieldname);
        }
        read_initializer_elem(inits, fieldtype, off + fieldtype->offset, designated);
        maybe_skip_comma();
        designated = 0;
        if (!ty->is_struct)
            break;
    }
    if (has_brace)
        skip_to_brace();
}
