
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ kind; scalar_t__ size; scalar_t__ usig; } ;
typedef TYPE_1__ Type ;
struct TYPE_12__ {scalar_t__ size; } ;


 int assert (int) ;
 TYPE_1__* copy_type (TYPE_1__*) ;
 int is_arithtype (TYPE_1__*) ;
 scalar_t__ is_flotype (TYPE_1__*) ;
 scalar_t__ is_inttype (TYPE_1__*) ;
 TYPE_5__* type_int ;

__attribute__((used)) static Type *usual_arith_conv(Type *t, Type *u) {
    assert(is_arithtype(t));
    assert(is_arithtype(u));
    if (t->kind < u->kind) {

        Type *tmp = t;
        t = u;
        u = tmp;
    }
    if (is_flotype(t))
        return t;
    assert(is_inttype(t) && t->size >= type_int->size);
    assert(is_inttype(u) && u->size >= type_int->size);
    if (t->size > u->size)
        return t;
    assert(t->size == u->size);
    if (t->usig == u->usig)
        return t;
    Type *r = copy_type(t);
    r->usig = 1;
    return r;
}
