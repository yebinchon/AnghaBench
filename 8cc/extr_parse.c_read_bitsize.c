
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kind; int size; } ;
typedef TYPE_1__ Type ;
typedef int Token ;


 scalar_t__ KIND_BOOL ;
 int error (char*,int ) ;
 int errort (int *,char*,char*,...) ;
 int is_inttype (TYPE_1__*) ;
 int * peek () ;
 int read_intexpr () ;
 int ty2s (TYPE_1__*) ;

__attribute__((used)) static int read_bitsize(char *name, Type *ty) {
    if (!is_inttype(ty))
        error("non-integer type cannot be a bitfield: %s", ty2s(ty));
    Token *tok = peek();
    int r = read_intexpr();
    int maxsize = ty->kind == KIND_BOOL ? 1 : ty->size * 8;
    if (r < 0 || maxsize < r)
        errort(tok, "invalid bitfield size for %s: %d", ty2s(ty), r);
    if (r == 0 && name != ((void*)0))
        errort(tok, "zero-width bitfield needs to be unnamed: %s", name);
    return r;
}
