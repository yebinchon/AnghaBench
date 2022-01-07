
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kind; } ;
typedef TYPE_1__ Type ;
typedef int Token ;


 scalar_t__ KIND_FUNC ;
 int errort (int *,char*) ;
 int expect (char) ;
 TYPE_1__* make_array_type (TYPE_1__*,int) ;
 scalar_t__ next_token (char) ;
 int * peek () ;
 TYPE_1__* read_declarator_tail (TYPE_1__*,int *) ;
 int read_intexpr () ;

__attribute__((used)) static Type *read_declarator_array(Type *basety) {
    int len;
    if (next_token(']')) {
        len = -1;
    } else {
        len = read_intexpr();
        expect(']');
    }
    Token *tok = peek();
    Type *t = read_declarator_tail(basety, ((void*)0));
    if (t->kind == KIND_FUNC)
        errort(tok, "array of functions");
    return make_array_type(t, len);
}
