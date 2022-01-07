
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_4__ {int len; int size; TYPE_2__* ptr; } ;
typedef TYPE_1__ Type ;
typedef int Token ;
struct TYPE_5__ {int size; } ;


 int errort (int *,char*,int) ;
 int expect (char) ;
 int * get () ;
 scalar_t__ is_keyword (int *,char) ;
 int maybe_read_brace () ;
 int maybe_skip_comma () ;
 int * peek () ;
 int read_initializer_elem (int *,TYPE_2__*,int,int) ;
 int read_intexpr () ;
 int skip_to_brace () ;
 int unget_token (int *) ;

__attribute__((used)) static void read_array_initializer_sub(Vector *inits, Type *ty, int off, bool designated) {
    bool has_brace = maybe_read_brace();
    bool flexible = (ty->len <= 0);
    int elemsize = ty->ptr->size;
    int i;
    for (i = 0; flexible || i < ty->len; i++) {
        Token *tok = get();
        if (is_keyword(tok, '}')) {
            if (!has_brace)
                unget_token(tok);
            goto finish;
        }
        if ((is_keyword(tok, '.') || is_keyword(tok, '[')) && !has_brace && !designated) {
            unget_token(tok);
            return;
        }
        if (is_keyword(tok, '[')) {
            Token *tok = peek();
            int idx = read_intexpr();
            if (idx < 0 || (!flexible && ty->len <= idx))
                errort(tok, "array designator exceeds array bounds: %d", idx);
            i = idx;
            expect(']');
            designated = 1;
        } else {
            unget_token(tok);
        }
        read_initializer_elem(inits, ty->ptr, off + elemsize * i, designated);
        maybe_skip_comma();
        designated = 0;
    }
    if (has_brace)
        skip_to_brace();
 finish:
    if (ty->len < 0) {
        ty->len = i;
        ty->size = elemsize * i;
    }
}
